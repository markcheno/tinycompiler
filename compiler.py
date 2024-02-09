import io, sys
from lexer import WendLexer
from earley import WendParser
from analyzer import *
from transasm import *

if len(sys.argv)!=2:
    sys.exit('Usage: compiler.py path/source.wend')
try:
    f = open(sys.argv[1], 'r')
    tokens = WendLexer().tokenize(f.read())
#    for _ in  tokens:
#        print(_)
    ast = WendParser().parse(tokens)
    build_symtable(ast)
    print(transasm(ast))
except Exception as e:
    print(e)

