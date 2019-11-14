(LIT "Fix \"for x in f.xreadlines()\" -> \"for x in f\".\n\nThis fixer will also convert g(f.xreadlines) into g(f.__iter__).")
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
(NEWLINE)
(KEYWORD class)
(ID "FixXreadlines")
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
(LIT "\n    power< call=any+ trailer< '.' 'xreadlines' > trailer< '(' ')' > >\n    |\n    power< any+ trailer< '.' no_call='xreadlines' > >\n    ")
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
(ID "no_call")
(PUNCT "=")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "no_call")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "no_call")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "no_call")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(LIT "__iter__")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "no_call")
(PUNCT ".")
(ID "prefix")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(PUNCT "[")
(ID "x")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "results")
(PUNCT "[")
(LIT "call")
(PUNCT "]")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(ENDMARKER)
