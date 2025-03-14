package main

import (
	"fmt"
)

// Decorate performs semantic analysis on the AST
func Decorate(ast interface{}) error {
	// Check for valid entry point
	fn, ok := ast.(*Function)
	if !ok || fn.Name != "main" || fn.Deco["type"] != VOID || len(fn.Args) > 0 {
		return fmt.Errorf("cannot find a valid entry point")
	}

	symtable := NewSymbolTable()
	err := symtable.AddFun(fn.Name, []TypeEnum{}, fn.Deco)
	if err != nil {
		return err
	}

	// Initialize string collection
	fn.Deco["strings"] = make(map[string]string)

	// Process scope twice to handle recursive and forward declarations
	err = ProcessScope(fn, symtable)
	if err != nil {
		return err
	}

	err = ProcessScope(fn, symtable)
	if err != nil {
		return err
	}

	// Store total function count for scope display table allocation
	fn.Deco["scope_cnt"] = symtable.ScopeCnt

	return nil
}

// ProcessScope processes a function scope, adding variables and checking statements
func ProcessScope(fun *Function, symtable *SymbolTable) error {
	symtable.PushScope(fun.Deco)
	defer symtable.PopScope()

	// Process function arguments
	for _, v := range fun.Args {
		err := symtable.AddVar(v.Name, v.Deco)
		if err != nil {
			return err
		}
	}

	// Process local variables
	for _, v := range fun.Var {
		err := symtable.AddVar(v.Name, v.Deco)
		if err != nil {
			return err
		}
	}

	// Process nested functions: first add function symbols to the table
	for _, f := range fun.Fun {
		argTypes := make([]TypeEnum, len(f.Args))
		for i, arg := range f.Args {
			argTypes[i] = arg.Deco["type"].(TypeEnum)
		}

		err := symtable.AddFun(f.Name, argTypes, f.Deco)
		if err != nil {
			return err
		}
	}

	// Then process nested function bodies
	for _, f := range fun.Fun {
		err := ProcessScope(f, symtable)
		if err != nil {
			return err
		}
	}

	// Process the list of statements
	for _, s := range fun.Body {
		err := ProcessInstruction(s, symtable)
		if err != nil {
			return err
		}
	}

	return nil
}

// ProcessInstruction performs semantic analysis on an AST node
func ProcessInstruction(node interface{}, symtable *SymbolTable) error {
	switch n := node.(type) {
	case *Print:
		return ProcessInstruction(n.Expr, symtable)

	case *Return:
		if n.Expr == nil {
			return nil // TODO semantic check for return; in non-void functions
		}

		err := ProcessInstruction(n.Expr, symtable)
		if err != nil {
			return err
		}

		returnType := symtable.RetStack[len(symtable.RetStack)-1]["type"].(TypeEnum)
		exprType := n.Expr.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)

		if returnType != exprType {
			return fmt.Errorf("incompatible types in return statement, line %v", n.Deco["lineno"])
		}

	case *Assign:
		err := ProcessInstruction(n.Expr, symtable)
		if err != nil {
			return err
		}

		varDeco, err := symtable.FindVar(n.Name)
		if err != nil {
			return err
		}

		// Copy variable decoration to assignment node
		for k, v := range varDeco {
			n.Deco[k] = v
		}

		varType := n.Deco["type"].(TypeEnum)
		exprType := n.Expr.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)

		if varType != exprType {
			return fmt.Errorf("incompatible types in assignment statement, line %v", n.Deco["lineno"])
		}

	case *While:
		err := ProcessInstruction(n.Expr, symtable)
		if err != nil {
			return err
		}

		exprType := n.Expr.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)
		if exprType != BOOL {
			return fmt.Errorf("non-boolean expression in while statement, line %v", n.Deco["lineno"])
		}

		for _, s := range n.Body {
			err := ProcessInstruction(s, symtable)
			if err != nil {
				return err
			}
		}

	case *IfThenElse:
		err := ProcessInstruction(n.Expr, symtable)
		if err != nil {
			return err
		}

		exprType := n.Expr.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)
		if exprType != BOOL {
			return fmt.Errorf("non-boolean expression in if statement, line %v", n.Deco["lineno"])
		}

		// Process if-body
		for _, s := range n.IBody {
			err := ProcessInstruction(s, symtable)
			if err != nil {
				return err
			}
		}

		// Process else-body
		for _, s := range n.EBody {
			err := ProcessInstruction(s, symtable)
			if err != nil {
				return err
			}
		}

	case *ArithOp:
		err := ProcessInstruction(n.Left, symtable)
		if err != nil {
			return err
		}

		err = ProcessInstruction(n.Right, symtable)
		if err != nil {
			return err
		}

		leftType := n.Left.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)
		rightType := n.Right.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)

		if leftType != INT || rightType != INT {
			return fmt.Errorf("arithmetic operation over non-integer type in line %v", n.Deco["lineno"])
		}

	case *LogicOp:
		err := ProcessInstruction(n.Left, symtable)
		if err != nil {
			return err
		}

		err = ProcessInstruction(n.Right, symtable)
		if err != nil {
			return err
		}

		leftType := n.Left.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)
		rightType := n.Right.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)

		if leftType != rightType {
			return fmt.Errorf("boolean operation over incompatible types in line %v", n.Deco["lineno"])
		}

		if (n.Op == "<=" || n.Op == "<" || n.Op == ">=" || n.Op == ">") && leftType != INT {
			return fmt.Errorf("boolean operation over incompatible types in line %v", n.Deco["lineno"])
		}

		if (n.Op == "&&" || n.Op == "||") && leftType != BOOL {
			return fmt.Errorf("boolean operation over incompatible types in line %v", n.Deco["lineno"])
		}

	case *Var:
		varDeco, err := symtable.FindVar(n.Name)
		if err != nil {
			return err
		}

		// Copy variable decoration to var node
		for k, v := range varDeco {
			n.Deco[k] = v
		}

	case *FunCall:
		// Process function arguments
		for _, arg := range n.Args {
			err := ProcessInstruction(arg, symtable)
			if err != nil {
				return err
			}
		}

		// Extract argument types
		argTypes := make([]TypeEnum, len(n.Args))
		for i, arg := range n.Args {
			argTypes[i] = arg.(interface{ GetDeco() Decoration }).GetDeco()["type"].(TypeEnum)
		}

		// Find function in symbol table
		funDeco, err := symtable.FindFun(n.Name, argTypes)
		if err != nil {
			return err
		}

		// Copy function decoration to call node
		for k, v := range funDeco {
			n.Deco[k] = v
		}

	case *String:
		// Add string to the collection in the main function
		stringsMap := symtable.RetStack[1]["strings"].(map[string]string)
		stringsMap[n.Deco["label"].(string)] = n.Value

	case *Integer, *Boolean:
		// No type checking necessary for literals

	default:
		return fmt.Errorf("unknown instruction: %T", node)
	}

	return nil
}

// GetDeco is an interface to get decoration map from AST nodes
type DecoGetter interface {
	GetDeco() Decoration
}
