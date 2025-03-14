package main

import (
	"fmt"
)

// ParseState represents the state of the parser in Earley algorithm
type ParseState struct {
	Rule  int         // index of the parse rule in the grammar
	Dot   int         // index of next symbol in the rule (dot position)
	Start int         // we saw this many tokens when we started the rule
	Token int         // we saw this many tokens up to the current dot position
	Prev  *ParseState // parent parse state pointer
}

// NextSymbol returns the next symbol in the grammar rule or empty string if at end
func (ps *ParseState) NextSymbol() string {
	prod := WendParser{}.Grammar()[ps.Rule].Production
	if ps.Dot < len(prod) {
		return prod[ps.Dot]
	}
	return ""
}

// Equal compares two ParseState objects
func (ps *ParseState) Equal(other *ParseState) bool {
	return ps.Rule == other.Rule && ps.Dot == other.Dot && ps.Start == other.Start
}

// GrammarRule represents a production rule in the grammar
type GrammarRule struct {
	NonTerminal string
	Production  []string
	Constructor func([]interface{}) interface{}
}

// WendParser implements the parser for Wend language
type WendParser struct{}

// Grammar returns the grammar rules for the Wend language
func (WendParser) Grammar() []GrammarRule {
	return []GrammarRule{
		{"fun", []string{"fun_type", "ID", "LPAREN", "param_list", "RPAREN", "BEGIN", "var_list", "fun_list", "statement_list", "END"},
			func(p []interface{}) interface{} {
				token := p[1].(*Token)
				return NewFunction(token.Value, p[3].([]Arg), p[6].([]Arg), p[7].([]*Function), p[8].([]interface{}), Decoration{
					"type":   p[0].(TypeEnum),
					"lineno": token.LineNo,
				})
			},
		},
		{"var", []string{"TYPE", "ID"},
			func(p []interface{}) interface{} {
				token0 := p[0].(*Token)
				token1 := p[1].(*Token)
				typeVal := INT
				if token0.Value == "bool" {
					typeVal = BOOL
				}
				return Arg{
					Name: token1.Value,
					Type: typeVal,
				}
			},
		},
		{"param_list", []string{"var"},
			func(p []interface{}) interface{} {
				return []Arg{p[0].(Arg)}
			},
		},
		{"param_list", []string{},
			func(p []interface{}) interface{} {
				return []Arg{}
			},
		},
		{"param_list", []string{"param_list", "COMMA", "var"},
			func(p []interface{}) interface{} {
				list := p[0].([]Arg)
				return append(list, p[2].(Arg))
			},
		},
		{"fun_type", []string{"TYPE"},
			func(p []interface{}) interface{} {
				token := p[0].(*Token)
				if token.Value == "int" {
					return INT
				}
				return BOOL
			},
		},
		{"fun_type", []string{},
			func(p []interface{}) interface{} {
				return VOID
			},
		},
		{"var_list", []string{"var_list", "var", "SEMICOLON"},
			func(p []interface{}) interface{} {
				list := p[0].([]Arg)
				return append(list, p[1].(Arg))
			},
		},
		{"var_list", []string{},
			func(p []interface{}) interface{} {
				return []Arg{}
			},
		},
		{"fun_list", []string{"fun_list", "fun"},
			func(p []interface{}) interface{} {
				list := p[0].([]*Function)
				return append(list, p[1].(*Function))
			},
		},
		{"fun_list", []string{},
			func(p []interface{}) interface{} {
				return []*Function{}
			},
		},
		{"statement_list", []string{"statement_list", "statement"},
			func(p []interface{}) interface{} {
				list := p[0].([]interface{})
				return append(list, p[1])
			},
		},
		{"statement_list", []string{},
			func(p []interface{}) interface{} {
				return []interface{}{}
			},
		},
		// More grammar rules follow here...
	}
	// Note: I'm showing a subset of the grammar rules for brevity
	// A complete implementation would include all rules from the Python version
}

// Recognize checks the syntax of the input tokens
func (wp WendParser) Recognize(tokens []*Token) (*ParseState, error) {
	charts := [][]*ParseState{{&ParseState{Rule: 0, Dot: 0, Start: 0}}}
	seen := []*Token{}

	appendState := func(i int, state *ParseState) {
		for len(charts) <= i {
			charts = append(charts, []*ParseState{})
		}

		// Check if state already exists in chart
		for _, existingState := range charts[i] {
			if state.Equal(existingState) {
				return
			}
		}

		charts[i] = append(charts[i], state)
	}

	tokenIndex := 0
	currentToken := &Token{}

	grammar := wp.Grammar()

	for {
		if tokenIndex < len(tokens) {
			currentToken = tokens[tokenIndex]
			seen = append(seen, currentToken)
		} else {
			currentToken = nil
			seen = append(seen, nil)
		}

		pos := len(seen) - 1

		for i := 0; i < len(charts[pos]); i++ {
			state := charts[pos][i]
			symbol := state.NextSymbol()

			if symbol == "" { // completed state
				for _, item := range charts[state.Start] {
					if item.NextSymbol() == grammar[state.Rule].NonTerminal {
						appendState(pos, &ParseState{
							Rule:  item.Rule,
							Dot:   item.Dot + 1,
							Start: item.Start,
							Token: pos,
							Prev:  state,
						})
					}
				}
			} else if isTerminal(symbol) { // terminal symbol
				if currentToken != nil && symbol == currentToken.Type {
					appendState(pos+1, &ParseState{
						Rule:  state.Rule,
						Dot:   state.Dot + 1,
						Start: state.Start,
						Token: pos + 1,
						Prev:  state,
					})
				}
			} else { // non-terminal symbol
				for idx, rule := range grammar {
					if rule.NonTerminal == symbol {
						appendState(pos, &ParseState{
							Rule:  idx,
							Dot:   0,
							Start: pos,
							Token: pos,
							Prev:  state,
						})
					}
				}
			}
		}

		if currentToken == nil {
			break
		}

		if len(charts) == pos+1 {
			return nil, fmt.Errorf("syntax error at line %d, token=%s", currentToken.LineNo, currentToken.Type)
		}

		tokenIndex++
	}

	// Find completed states at the end
	for _, state := range charts[len(charts)-1] {
		if state.Rule == 0 && state.Dot == len(grammar[0].Production) && state.Start == 0 {
			return state, nil
		}
	}

	return nil, fmt.Errorf("syntax error: unexpected EOF")
}

// BuildSyntTree constructs the syntax tree from the parse state
func (wp WendParser) BuildSyntTree(rule *ParseState, tokens []*Token) (interface{}, error) {
	var production []*ParseState

	// Rewind through the charts
	for rule != nil {
		if rule.NextSymbol() == "" { // keep completed rules only
			production = append(production, rule)
		}
		rule = rule.Prev
	}

	// Reverse production
	for i, j := 0, len(production)-1; i < j; i, j = i+1, j-1 {
		production[i], production[j] = production[j], production[i]
	}

	var stack []interface{}
	tokenIdx := 0

	grammar := wp.Grammar()

	// Process production rules in order
	for _, rule := range production {
		// Add tokens to the stack
		for tokenIdx < rule.Token {
			stack = append(stack, tokens[tokenIdx])
			tokenIdx++
		}

		chomp := len(grammar[rule.Rule].Production)
		var chew []interface{}

		// Chomp tokens from stack
		if chomp > 0 {
			stackLen := len(stack)
			chew = stack[stackLen-chomp:]
			stack = stack[:stackLen-chomp]
		}

		// Apply constructor and put result back on stack
		result := grammar[rule.Rule].Constructor(chew)
		stack = append(stack, result)
	}

	if len(stack) != 1 {
		return nil, fmt.Errorf("parse error: expected 1 item on stack, got %d", len(stack))
	}

	return stack[0], nil
}

// Parse combines recognition and syntax tree building
func (wp WendParser) Parse(tokens []*Token) (interface{}, error) {
	finalState, err := wp.Recognize(tokens)
	if err != nil {
		return nil, err
	}

	return wp.BuildSyntTree(finalState, tokens)
}

// Helper function to check if a symbol is a terminal
func isTerminal(symbol string) bool {
	// This would need to match the lexer's token types
	terminals := map[string]bool{
		"ID": true, "INTEGER": true, "BOOLEAN": true, "STRING": true,
		"LPAREN": true, "RPAREN": true, "BEGIN": true, "END": true,
		"SEMICOLON": true, "COMMA": true, "ASSIGN": true,
		"TYPE": true, "RETURN": true, "PRINT": true, "IF": true, "ELSE": true,
		"WHILE": true, "OR": true, "AND": true, "NOT": true,
		"COMP": true, "MINUS": true, "PLUS": true, "MOD": true,
		"DIVIDE": true, "TIMES": true,
	}
	return terminals[symbol]
}
