(LIT "Fixer for has_key().\n\nCalls to .has_key() methods are expressed in terms of the 'in'\noperator:\n\n    d.has_key(k) -> k in d\n\nCAVEATS:\n1) While the primary target of this fixer is dict.has_key(), the\n   fixer will change any has_key() method call, regardless of its\n   class.\n\n2) Cases like this will not be converted:\n\n    m = d.has_key\n    if m(k):\n        ...\n\n   Only *calls* to has_key() are converted. While it is possible to\n   convert the above to something like\n\n    m = d.__contains__\n    if m(k):\n        ...\n\n   this is currently not done.\n")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(KEYWORD import)
(ID "pytree")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(ID "pgen2")
(KEYWORD import)
(ID "token")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(KEYWORD import)
(ID "fixer_base")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(ID "fixer_util")
(KEYWORD import)
(ID "Name")
(PUNCT ",")
(ID "parenthesize")
(NEWLINE)
(KEYWORD class)
(ID "FixHasKey")
(PUNCT "(")
(ID "fixer_base")
(PUNCT ".")
(ID "BaseFix")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "BM_compatible")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "PATTERN")
(PUNCT "=")
(LIT "\n    anchor=power<\n        before=any+\n        trailer< '.' 'has_key' >\n        trailer<\n            '('\n            ( not(arglist | argument<any '=' any>) arg=any\n            | arglist<(not argument<any '=' any>) arg=any ','>\n            )\n            ')'\n        >\n        after=any*\n    >\n    |\n    negation=not_test<\n        'not'\n        anchor=power<\n            before=any+\n            trailer< '.' 'has_key' >\n            trailer<\n                '('\n                ( not(arglist | argument<any '=' any>) arg=any\n                | arglist<(not argument<any '=' any>) arg=any ','>\n                )\n                ')'\n            >\n        >\n    >\n    ")
(NEWLINE)
(KEYWORD def)
(ID "transform")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "node")
(PUNCT ",")
(ID "results")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(ID "results")
(NEWLINE)
(ID "syms")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "syms")
(NEWLINE)
(KEYWORD if)
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "parent")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "not_test")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "pattern")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "parent")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "negation")
(PUNCT "=")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "negation")
(PUNCT ")")
(NEWLINE)
(ID "anchor")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "anchor")
(PUNCT "]")
(NEWLINE)
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(NEWLINE)
(ID "before")
(PUNCT "=")
(PUNCT "[")
(ID "n")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(KEYWORD for)
(ID "n")
(KEYWORD in)
(ID "results")
(PUNCT "[")
(LIT "before")
(PUNCT "]")
(PUNCT "]")
(NEWLINE)
(ID "arg")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "arg")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "after")
(PUNCT "=")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "after")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "after")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "after")
(PUNCT "=")
(PUNCT "[")
(ID "n")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(KEYWORD for)
(ID "n")
(KEYWORD in)
(ID "after")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "arg")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comparison")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "not_test")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "and_test")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "or_test")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "test")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "lambdef")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "argument")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "arg")
(PUNCT "=")
(ID "parenthesize")
(PUNCT "(")
(ID "arg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "before")
(PUNCT ")")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "before")
(PUNCT "=")
(ID "before")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "before")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "power")
(PUNCT ",")
(ID "before")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "before")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "n_op")
(PUNCT "=")
(ID "Name")
(PUNCT "(")
(LIT "in")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "negation")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n_not")
(PUNCT "=")
(ID "Name")
(PUNCT "(")
(LIT "not")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(ID "n_op")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comp_op")
(PUNCT ",")
(PUNCT "(")
(ID "n_not")
(PUNCT ",")
(ID "n_op")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "new")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comparison")
(PUNCT ",")
(PUNCT "(")
(ID "arg")
(PUNCT ",")
(ID "n_op")
(PUNCT ",")
(ID "before")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "after")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new")
(PUNCT "=")
(ID "parenthesize")
(PUNCT "(")
(ID "new")
(PUNCT ")")
(NEWLINE)
(ID "new")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "power")
(PUNCT ",")
(PUNCT "(")
(ID "new")
(PUNCT ",")
(PUNCT ")")
(PUNCT "+")
(ID "tuple")
(PUNCT "(")
(ID "after")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "node")
(PUNCT ".")
(ID "parent")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comparison")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "expr")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "xor_expr")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "and_expr")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "shift_expr")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "arith_expr")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "term")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "factor")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "power")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new")
(PUNCT "=")
(ID "parenthesize")
(PUNCT "(")
(ID "new")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "new")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "prefix")
(NEWLINE)
(KEYWORD return)
(ID "new")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
