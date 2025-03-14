package main

import (
	"fmt"
	"os"
)

func main() {
	// Check command line arguments
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "Usage: compiler path/source.wend")
		os.Exit(1)
	}

	// Try to compile the source file
	err := compile(os.Args[1])
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

// compile reads the source file and runs the compilation pipeline
func compile(sourcePath string) error {
	// Read the source file
	sourceBytes, err := os.ReadFile(sourcePath)
	if err != nil {
		return fmt.Errorf("failed to read source file: %v", err)
	}
	sourceText := string(sourceBytes)

	// Create lexer and tokenize the input
	lexer := NewWendLexer()
	tokens, err := lexer.Tokenize(sourceText)
	if err != nil {
		return fmt.Errorf("lexical error: %v", err)
	}

	// Parse the tokens into an AST
	parser := WendParser{}
	// Convert []Token to []*Token
	tokenPtrs := make([]*Token, len(tokens))
	for i := range tokens {
		tokenPtrs[i] = &tokens[i]
	}
	ast, err := parser.Parse(tokenPtrs)
	if err != nil {
		return fmt.Errorf("parse error: %v", err)
	}

	// Perform semantic analysis
	err = Decorate(ast)
	if err != nil {
		return fmt.Errorf("semantic error: %v", err)
	}

	// Generate assembly code
	// Uncomment when transasm is implemented
	// assembly := TransAsm(ast)
	// fmt.Println(assembly)

	return nil
}
