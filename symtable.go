package main

import (
	"fmt"
	"strings"
)

// Signature is a composite key for function identification
type Signature struct {
	Name     string
	ArgTypes []TypeEnum
}

// Key converts a Signature to a string for use as a map key
func (s Signature) Key() string {
	types := make([]string, len(s.ArgTypes))
	for i, t := range s.ArgTypes {
		types[i] = fmt.Sprintf("%d", int(t))
	}
	return fmt.Sprintf("%s|%s", s.Name, strings.Join(types, ","))
}

// String returns a string representation of the signature for debugging
func (s Signature) String() string {
	types := make([]string, len(s.ArgTypes))
	for i, t := range s.ArgTypes {
		types[i] = fmt.Sprintf("%v", t)
	}
	return fmt.Sprintf("%s(%s)", s.Name, strings.Join(types, ", "))
}

// Equal compares two signatures for equality
func (s Signature) Equal(other Signature) bool {
	if s.Name != other.Name || len(s.ArgTypes) != len(other.ArgTypes) {
		return false
	}

	for i, t := range s.ArgTypes {
		if t != other.ArgTypes[i] {
			return false
		}
	}

	return true
}

// SymbolTable manages variable and function declarations across scopes
type SymbolTable struct {
	Variables []map[string]Decoration // stack of variable symbol tables
	Functions []map[string]Decoration // stack of function symbol tables - using string keys derived from Signature
	RetStack  []Decoration            // stack of enclosing function symbols, useful for return statements
	ScopeCnt  int                     // global scope counter for the display table allocation
}

// NewSymbolTable creates a new initialized symbol table
func NewSymbolTable() *SymbolTable {
	return &SymbolTable{
		Variables: []map[string]Decoration{make(map[string]Decoration)},
		Functions: []map[string]Decoration{make(map[string]Decoration)},
		RetStack:  []Decoration{nil},
		ScopeCnt:  0,
	}
}

// AddFun adds a function to the current scope
func (st *SymbolTable) AddFun(name string, argTypes []TypeEnum, deco Decoration) error {
	signature := Signature{
		Name:     name,
		ArgTypes: argTypes,
	}

	key := signature.Key()

	if _, exists := st.Functions[len(st.Functions)-1][key]; exists {
		return fmt.Errorf("double declaration of the function %s %v", signature.Name, signature.ArgTypes)
	}

	st.Functions[len(st.Functions)-1][key] = deco
	deco["scope"] = st.ScopeCnt // id for the function block in the scope display table
	st.ScopeCnt++

	return nil
}

// FindFun looks up a function in all scopes, starting from innermost
func (st *SymbolTable) FindFun(name string, argTypes []TypeEnum) (Decoration, error) {
	signature := Signature{
		Name:     name,
		ArgTypes: argTypes,
	}

	key := signature.Key()

	// Search from innermost scope outward
	for i := len(st.Functions) - 1; i >= 0; i-- {
		if deco, exists := st.Functions[i][key]; exists {
			return deco, nil
		}
	}

	return nil, fmt.Errorf("no declaration for the function %s %v", name, argTypes)
}

// UpdateFunctionDefinitions updates existing function signatures
func (st *SymbolTable) PushScope(deco Decoration) {
	st.Variables = append(st.Variables, make(map[string]Decoration))
	st.Functions = append(st.Functions, make(map[string]Decoration))
	st.RetStack = append(st.RetStack, deco)
	deco["var_cnt"] = 0 // reset the per scope variable counter
}

// AddVar adds a variable to the current scope
func (st *SymbolTable) AddVar(name string, deco Decoration) error {
	if _, exists := st.Variables[len(st.Variables)-1][name]; exists {
		return fmt.Errorf("double declaration of the variable %s", name)
	}

	st.Variables[len(st.Variables)-1][name] = deco

	// Get current function's decoration
	fnDeco := st.RetStack[len(st.RetStack)-1]
	if fnDeco != nil {
		deco["scope"] = fnDeco["scope"] // pointer to the display entry
		varCount, _ := fnDeco["var_cnt"].(int)
		deco["offset"] = varCount        // id of the variable in the corresponding stack frame
		fnDeco["var_cnt"] = varCount + 1 // increment variable counter
	}

	return nil
}

// PopScope removes the current scope level
func (st *SymbolTable) PopScope() {
	st.Variables = st.Variables[:len(st.Variables)-1]
	st.Functions = st.Functions[:len(st.Functions)-1]
	st.RetStack = st.RetStack[:len(st.RetStack)-1]
}

// FindVar looks up a variable in all scopes, starting from innermost
func (st *SymbolTable) FindVar(name string) (Decoration, error) {
	// Search from innermost scope outward
	for i := len(st.Variables) - 1; i >= 0; i-- {
		if deco, exists := st.Variables[i][name]; exists {
			return deco, nil
		}
	}

	return nil, fmt.Errorf("no declaration for the variable %s", name)
}
