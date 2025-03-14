package main

import (
	"fmt"
)

// Token represents a lexical token
type Token struct {
	Type   string
	Value  string
	LineNo int
}

// String returns a string representation of the token
func (t Token) String() string {
	return fmt.Sprintf("Token(type=%q, value=%q, lineno=%d)", t.Type, t.Value, t.LineNo)
}

// WendLexer implements a lexical analyzer for the Wend language
type WendLexer struct {
	keywords   map[string]string
	doubleChar map[string]string
	singleChar map[string]string
	tokens     map[string]bool
}

// NewWendLexer creates a new WendLexer instance
func NewWendLexer() *WendLexer {
	l := &WendLexer{
		keywords: map[string]string{
			"true":    "BOOLEAN",
			"false":   "BOOLEAN",
			"print":   "PRINT",
			"println": "PRINT",
			"int":     "TYPE",
			"bool":    "TYPE",
			"if":      "IF",
			"else":    "ELSE",
			"while":   "WHILE",
			"return":  "RETURN",
		},
		doubleChar: map[string]string{
			"==": "COMP",
			"<=": "COMP",
			">=": "COMP",
			"!=": "COMP",
			"&&": "AND",
			"||": "OR",
		},
		singleChar: map[string]string{
			"=": "ASSIGN",
			"<": "COMP",
			">": "COMP",
			"!": "NOT",
			"+": "PLUS",
			"-": "MINUS",
			"/": "DIVIDE",
			"*": "TIMES",
			"%": "MOD",
			"(": "LPAREN",
			")": "RPAREN",
			"{": "BEGIN",
			"}": "END",
			";": "SEMICOLON",
			",": "COMMA",
		},
		tokens: make(map[string]bool),
	}

	// Add all token types to the tokens set
	for _, v := range l.keywords {
		l.tokens[v] = true
	}
	for _, v := range l.doubleChar {
		l.tokens[v] = true
	}
	for _, v := range l.singleChar {
		l.tokens[v] = true
	}
	l.tokens["ID"] = true
	l.tokens["STRING"] = true
	l.tokens["INTEGER"] = true

	return l
}

// Tokenize converts the input text into a sequence of tokens
func (l *WendLexer) Tokenize(text string) ([]Token, error) {
	tokens := []Token{}
	lineNo, idx, state := 0, 0, 0
	accum := ""

	getSym := func(offset int) byte {
		if idx+offset < len(text) {
			return text[idx+offset]
		}
		return ' '
	}

	for idx < len(text) {
		sym1 := getSym(0)
		sym2 := getSym(1)

		switch state {
		case 0: // Start scanning a new token
			if sym1 == '/' && sym2 == '/' {
				// Start a comment scan
				state = 1
				idx++
			} else if isLetter(sym1) || sym1 == '_' {
				// Start a word scan
				state = 3
				accum += string(sym1)
			} else if isDigit(sym1) {
				// Start a number scan
				state = 4
				accum += string(sym1)
			} else if sym1 == '"' {
				// Start a string scan
				state = 2
			} else if doubleChar := string(sym1) + string(sym2); l.doubleChar[doubleChar] != "" {
				// Emit two-character token
				tokens = append(tokens, Token{Type: l.doubleChar[doubleChar], Value: doubleChar, LineNo: lineNo})
				idx++
			} else if singleChar := string(sym1); l.singleChar[singleChar] != "" {
				// Emit one-character token
				tokens = append(tokens, Token{Type: l.singleChar[singleChar], Value: singleChar, LineNo: lineNo})
			} else if sym1 != '\r' && sym1 != '\t' && sym1 != ' ' && sym1 != '\n' {
				// Illegal character
				return nil, fmt.Errorf("lexical error: illegal character '%c' at line %d", sym1, lineNo)
			}
		case 3: // Scanning a word
			if isLetter(sym1) || sym1 == '_' || isDigit(sym1) {
				// Continue scanning the word
				accum += string(sym1)
			} else {
				// Word scan complete
				tokenType := l.keywords[accum]
				if tokenType == "" {
					tokenType = "ID"
				}
				tokens = append(tokens, Token{Type: tokenType, Value: accum, LineNo: lineNo})
				idx--
				state, accum = 0, ""
			}
		case 4: // Scanning a number
			if isDigit(sym1) {
				// Continue scanning the number
				accum += string(sym1)
			} else {
				// Number scan complete
				tokens = append(tokens, Token{Type: "INTEGER", Value: accum, LineNo: lineNo})
				idx--
				state, accum = 0, ""
			}
		case 2: // Scanning a string
			if sym1 != '"' || (len(accum) > 0 && accum[len(accum)-1] == '\\') {
				// Continue scanning the string
				accum += string(sym1)
			} else {
				// String scan complete
				tokens = append(tokens, Token{Type: "STRING", Value: accum, LineNo: lineNo})
				state, accum = 0, ""
			}
		}

		if sym1 == '\n' {
			lineNo++
			if state == 1 {
				// End of comment
				state, accum = 0, ""
			}
		}
		idx++
	}

	if state != 0 {
		// If we're in a comment state at EOF, that's actually fine
		if state == 1 {
			// Comment at EOF is valid, no error
			return tokens, nil
		}
		return nil, fmt.Errorf("lexical error: unexpected EOF")
	}

	return tokens, nil
}

// Helper functions for character classification
func isLetter(c byte) bool {
	return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
}

func isDigit(c byte) bool {
	return c >= '0' && c <= '9'
}

// Example usage
// func main() {
// 	lexer := NewWendLexer()
// 	tokens, err := lexer.Tokenize("int x = 42; // This is a comment")
// 	if err != nil {
// 		fmt.Println("Error:", err)
// 		return
// 	}
// 	for _, token := range tokens {
// 		fmt.Println(token)
// 	}
// }
