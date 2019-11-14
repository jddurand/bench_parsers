(LIT "Fixer for 'raise E, V, T'\n\nraise         -> raise\nraise E       -> raise E\nraise E, V    -> raise E(V)\nraise E, V, T -> raise E(V).with_traceback(T)\nraise E, None, T -> raise E.with_traceback(T)\n\nraise (((E, E'), E''), E'''), V -> raise E(V)\nraise \"foo\", V, T               -> warns about string exceptions\n\n\nCAVEATS:\n1) \"raise E, V\" will be incorrectly translated if V is an exception\n   instance. The correct Python 3 idiom is\n\n        raise E from V\n\n   but since we can't detect instance-hood by syntax alone and since\n   any client code would have to be changed as well, we don't automate\n   this.\n")
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
(ID "Call")
(PUNCT ",")
(ID "Attr")
(PUNCT ",")
(ID "ArgList")
(PUNCT ",")
(ID "is_tuple")
(NEWLINE)
(KEYWORD class)
(ID "FixRaise")
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
(LIT "\n    raise_stmt< 'raise' exc=any [',' val=any [',' tb=any]] >\n    ")
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
(ID "syms")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "syms")
(NEWLINE)
(ID "exc")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "exc")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "exc")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "STRING")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "Python 3 does not support string exceptions")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "cannot_convert")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "is_tuple")
(PUNCT "(")
(ID "exc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD while)
(ID "is_tuple")
(PUNCT "(")
(ID "exc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exc")
(PUNCT "=")
(ID "exc")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "exc")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT "val")
(KEYWORD not)
(KEYWORD in)
(ID "results")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "raise_stmt")
(PUNCT ",")
(PUNCT "[")
(ID "Name")
(PUNCT "(")
(LIT "raise")
(PUNCT ")")
(PUNCT ",")
(ID "exc")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "new")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(NEWLINE)
(KEYWORD return)
(ID "new")
(NEWLINE)
(DEDENT)
(ID "val")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "val")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "is_tuple")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(PUNCT "[")
(ID "c")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(KEYWORD for)
(ID "c")
(KEYWORD in)
(ID "val")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "val")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "args")
(PUNCT "=")
(PUNCT "[")
(ID "val")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT "tb")
(KEYWORD in)
(ID "results")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tb")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "tb")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "tb")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "e")
(PUNCT "=")
(ID "exc")
(NEWLINE)
(KEYWORD if)
(ID "val")
(PUNCT ".")
(ID "type")
(PUNCT "!=")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD or)
(ID "val")
(PUNCT ".")
(ID "value")
(PUNCT "!=")
(LIT "None")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "e")
(PUNCT "=")
(ID "Call")
(PUNCT "(")
(ID "exc")
(PUNCT ",")
(ID "args")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "with_tb")
(PUNCT "=")
(ID "Attr")
(PUNCT "(")
(ID "e")
(PUNCT ",")
(ID "Name")
(PUNCT "(")
(LIT "with_traceback")
(PUNCT ")")
(PUNCT ")")
(PUNCT "+")
(PUNCT "[")
(ID "ArgList")
(PUNCT "(")
(PUNCT "[")
(ID "tb")
(PUNCT "]")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "new")
(PUNCT "=")
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "simple_stmt")
(PUNCT ",")
(PUNCT "[")
(ID "Name")
(PUNCT "(")
(LIT "raise")
(PUNCT ")")
(PUNCT "]")
(PUNCT "+")
(ID "with_tb")
(PUNCT ")")
(NEWLINE)
(ID "new")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(NEWLINE)
(KEYWORD return)
(ID "new")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "pytree")
(PUNCT ".")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "raise_stmt")
(PUNCT ",")
(PUNCT "[")
(ID "Name")
(PUNCT "(")
(LIT "raise")
(PUNCT ")")
(PUNCT ",")
(ID "Call")
(PUNCT "(")
(ID "exc")
(PUNCT ",")
(ID "args")
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(ENDMARKER)
