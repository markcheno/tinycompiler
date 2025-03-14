package main

import (
	"fmt"
)

// LabelFactory generates unique labels for AST nodes
type LabelFactory struct{}

var counter int = 0

// CurLabel returns the current label without incrementing the counter
func (LabelFactory) CurLabel() string {
	return fmt.Sprintf("uniqstr%d", counter)
}

// NewLabel increments the counter and returns a new unique label
func (LabelFactory) NewLabel() string {
	counter++
	return fmt.Sprintf("uniqstr%d", counter)
}

// TypeEnum represents data types in the language
type TypeEnum int

const (
	VOID TypeEnum = iota
	INT
	BOOL
	STRING
)

// Decoration holds metadata for AST nodes
type Decoration map[string]interface{}

// Arg represents a function argument or variable with type
type Arg struct {
	Name string
	Type TypeEnum
	Deco Decoration
}

// Function node represents a function definition
type Function struct {
	Name string
	Args []Arg
	Var  []Arg
	Fun  []*Function
	Body []interface{}
	Deco Decoration
}

// NewFunction creates a new Function node
func NewFunction(name string, args []Arg, vars []Arg, fun []*Function, body []interface{}, deco Decoration) *Function {
	if deco == nil {
		deco = Decoration{}
	}
	labelFactory := LabelFactory{}
	deco["label"] = name + "_" + labelFactory.NewLabel()

	return &Function{
		Name: name,
		Args: args,
		Var:  vars,
		Fun:  fun,
		Body: body,
		Deco: deco,
	}
}

// Print node represents a print statement
type Print struct {
	Expr    interface{}
	Newline bool
	Deco    Decoration
}

// NewPrint creates a new Print node
func NewPrint(expr interface{}, newline bool, deco Decoration) *Print {
	if deco == nil {
		deco = Decoration{}
	}
	return &Print{
		Expr:    expr,
		Newline: newline,
		Deco:    deco,
	}
}

// Return node represents a return statement
type Return struct {
	Expr interface{}
	Deco Decoration
}

// NewReturn creates a new Return node
func NewReturn(expr interface{}, deco Decoration) *Return {
	if deco == nil {
		deco = Decoration{}
	}
	return &Return{
		Expr: expr,
		Deco: deco,
	}
}

// Assign node represents an assignment statement
type Assign struct {
	Name string
	Expr interface{}
	Deco Decoration
}

// NewAssign creates a new Assign node
func NewAssign(name string, expr interface{}, deco Decoration) *Assign {
	if deco == nil {
		deco = Decoration{}
	}
	return &Assign{
		Name: name,
		Expr: expr,
		Deco: deco,
	}
}

// While node represents a while loop
type While struct {
	Expr interface{}
	Body []interface{}
	Deco Decoration
}

// NewWhile creates a new While node
func NewWhile(expr interface{}, body []interface{}, deco Decoration) *While {
	if deco == nil {
		deco = Decoration{}
	}
	return &While{
		Expr: expr,
		Body: body,
		Deco: deco,
	}
}

// IfThenElse node represents an if-then-else statement
type IfThenElse struct {
	Expr  interface{}
	IBody []interface{}
	EBody []interface{}
	Deco  Decoration
}

// NewIfThenElse creates a new IfThenElse node
func NewIfThenElse(expr interface{}, ibody []interface{}, ebody []interface{}, deco Decoration) *IfThenElse {
	if deco == nil {
		deco = Decoration{}
	}
	return &IfThenElse{
		Expr:  expr,
		IBody: ibody,
		EBody: ebody,
		Deco:  deco,
	}
}

// ArithOp node represents an arithmetic operation
type ArithOp struct {
	Op    string
	Left  interface{}
	Right interface{}
	Deco  Decoration
}

// NewArithOp creates a new ArithOp node
func NewArithOp(op string, left interface{}, right interface{}, deco Decoration) *ArithOp {
	if deco == nil {
		deco = Decoration{}
	}
	deco["type"] = INT
	return &ArithOp{
		Op:    op,
		Left:  left,
		Right: right,
		Deco:  deco,
	}
}

// LogicOp node represents a logical operation
type LogicOp struct {
	Op    string
	Left  interface{}
	Right interface{}
	Deco  Decoration
}

// NewLogicOp creates a new LogicOp node
func NewLogicOp(op string, left interface{}, right interface{}, deco Decoration) *LogicOp {
	if deco == nil {
		deco = Decoration{}
	}
	deco["type"] = BOOL
	return &LogicOp{
		Op:    op,
		Left:  left,
		Right: right,
		Deco:  deco,
	}
}

// Integer node represents an integer literal
type Integer struct {
	Value int
	Deco  Decoration
}

// NewInteger creates a new Integer node
func NewInteger(value int, deco Decoration) *Integer {
	if deco == nil {
		deco = Decoration{}
	}
	deco["type"] = INT
	return &Integer{
		Value: value,
		Deco:  deco,
	}
}

// Boolean node represents a boolean literal
type Boolean struct {
	Value bool
	Deco  Decoration
}

// NewBoolean creates a new Boolean node
func NewBoolean(value bool, deco Decoration) *Boolean {
	if deco == nil {
		deco = Decoration{}
	}
	deco["type"] = BOOL
	return &Boolean{
		Value: value,
		Deco:  deco,
	}
}

// String node represents a string literal
type String struct {
	Value string
	Deco  Decoration
}

// NewString creates a new String node
func NewString(value string, deco Decoration) *String {
	if deco == nil {
		deco = Decoration{}
	}
	labelFactory := LabelFactory{}
	deco["type"] = STRING
	deco["label"] = labelFactory.NewLabel()
	return &String{
		Value: value,
		Deco:  deco,
	}
}

// Var node represents a variable reference
type Var struct {
	Name string
	Deco Decoration
}

// NewVar creates a new Var node
func NewVar(name string, deco Decoration) *Var {
	if deco == nil {
		deco = Decoration{}
	}
	return &Var{
		Name: name,
		Deco: deco,
	}
}

// FunCall node represents a function call
type FunCall struct {
	Name string
	Args []interface{}
	Deco Decoration
}

// NewFunCall creates a new FunCall node
func NewFunCall(name string, args []interface{}, deco Decoration) *FunCall {
	if deco == nil {
		deco = Decoration{}
	}
	return &FunCall{
		Name: name,
		Args: args,
		Deco: deco,
	}
}
