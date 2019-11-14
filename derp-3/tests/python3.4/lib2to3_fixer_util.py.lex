(LIT "Utility functions, node construction macros, etc.")
(NEWLINE)
(KEYWORD from)
(ID "itertools")
(KEYWORD import)
(ID "islice")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "pgen2")
(KEYWORD import)
(ID "token")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "pytree")
(KEYWORD import)
(ID "Leaf")
(PUNCT ",")
(ID "Node")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "pygram")
(KEYWORD import)
(ID "python_symbols")
(KEYWORD as)
(ID "syms")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "patcomp")
(NEWLINE)
(KEYWORD def)
(ID "KeywordArg")
(PUNCT "(")
(ID "keyword")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "argument")
(PUNCT ",")
(PUNCT "[")
(ID "keyword")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "EQUAL")
(PUNCT ",")
(LIT "=")
(PUNCT ")")
(PUNCT ",")
(ID "value")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "LParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "LPAR")
(PUNCT ",")
(LIT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "RParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "RPAR")
(PUNCT ",")
(LIT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Assign")
(PUNCT "(")
(ID "target")
(PUNCT ",")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Build an assignment statement")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "target")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "target")
(PUNCT "=")
(PUNCT "[")
(ID "target")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "source")
(PUNCT "=")
(PUNCT "[")
(ID "source")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "atom")
(PUNCT ",")
(ID "target")
(PUNCT "+")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "EQUAL")
(PUNCT ",")
(LIT "=")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(PUNCT "]")
(PUNCT "+")
(ID "source")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Name")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a NAME leaf")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Attr")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A node tuple for obj.attr")
(NEWLINE)
(KEYWORD return)
(PUNCT "[")
(ID "obj")
(PUNCT ",")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "trailer")
(PUNCT ",")
(PUNCT "[")
(ID "Dot")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "attr")
(PUNCT "]")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Comma")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A comma leaf")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "COMMA")
(PUNCT ",")
(LIT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Dot")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A period (.) leaf")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "DOT")
(PUNCT ",")
(LIT ".")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "ArgList")
(PUNCT "(")
(ID "args")
(PUNCT ",")
(ID "lparen")
(PUNCT "=")
(ID "LParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "rparen")
(PUNCT "=")
(ID "RParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A parenthesised argument list, used by Call()")
(NEWLINE)
(ID "node")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "trailer")
(PUNCT ",")
(PUNCT "[")
(ID "lparen")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "rparen")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "args")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT ".")
(ID "insert_child")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "arglist")
(PUNCT ",")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Call")
(PUNCT "(")
(ID "func_name")
(PUNCT ",")
(ID "args")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A function call")
(NEWLINE)
(ID "node")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "power")
(PUNCT ",")
(PUNCT "[")
(ID "func_name")
(PUNCT ",")
(ID "ArgList")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "prefix")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "prefix")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Newline")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A newline literal")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NEWLINE")
(PUNCT ",")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "BlankLine")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A blank line")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NEWLINE")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Number")
(PUNCT "(")
(ID "n")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NUMBER")
(PUNCT ",")
(ID "n")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "Subscript")
(PUNCT "(")
(ID "index_node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A numeric or string subscript")
(NEWLINE)
(KEYWORD return)
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "trailer")
(PUNCT ",")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "LBRACE")
(PUNCT ",")
(LIT "[")
(PUNCT ")")
(PUNCT ",")
(ID "index_node")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "RBRACE")
(PUNCT ",")
(LIT "]")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "String")
(PUNCT "(")
(ID "string")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A string leaf")
(NEWLINE)
(KEYWORD return)
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "STRING")
(PUNCT ",")
(ID "string")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "ListComp")
(PUNCT "(")
(ID "xp")
(PUNCT ",")
(ID "fp")
(PUNCT ",")
(ID "it")
(PUNCT ",")
(ID "test")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A list comprehension of the form [xp for fp in it if test].\n\n    If test is None, the \"if test\" part is omitted.\n    ")
(NEWLINE)
(ID "xp")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "fp")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "it")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "for_leaf")
(PUNCT "=")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "for")
(PUNCT ")")
(NEWLINE)
(ID "for_leaf")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "in_leaf")
(PUNCT "=")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "in")
(PUNCT ")")
(NEWLINE)
(ID "in_leaf")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "inner_args")
(PUNCT "=")
(PUNCT "[")
(ID "for_leaf")
(PUNCT ",")
(ID "fp")
(PUNCT ",")
(ID "in_leaf")
(PUNCT ",")
(ID "it")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "test")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "test")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "if_leaf")
(PUNCT "=")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "if")
(PUNCT ")")
(NEWLINE)
(ID "if_leaf")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(NEWLINE)
(ID "inner_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comp_if")
(PUNCT ",")
(PUNCT "[")
(ID "if_leaf")
(PUNCT ",")
(ID "test")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "inner")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "listmaker")
(PUNCT ",")
(PUNCT "[")
(ID "xp")
(PUNCT ",")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "comp_for")
(PUNCT ",")
(ID "inner_args")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "atom")
(PUNCT ",")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "LBRACE")
(PUNCT ",")
(LIT "[")
(PUNCT ")")
(PUNCT ",")
(ID "inner")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "RBRACE")
(PUNCT ",")
(LIT "]")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "FromImport")
(PUNCT "(")
(ID "package_name")
(PUNCT ",")
(ID "name_leafs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Return an import statement in the form:\n        from package import name_leafs")
(NEWLINE)
(KEYWORD for)
(ID "leaf")
(KEYWORD in)
(ID "name_leafs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "leaf")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "children")
(PUNCT "=")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "from")
(PUNCT ")")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(ID "package_name")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "import")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(PUNCT ",")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "import_as_names")
(PUNCT ",")
(ID "name_leafs")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "imp")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "import_from")
(PUNCT ",")
(ID "children")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "imp")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "ImportAndCall")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "results")
(PUNCT ",")
(ID "names")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Returns an import statement and calls a method\n    of the module:\n\n    import module\n    module.name()")
(NEWLINE)
(ID "obj")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "obj")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "obj")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "arglist")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newarglist")
(PUNCT "=")
(ID "obj")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newarglist")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "arglist")
(PUNCT ",")
(PUNCT "[")
(ID "obj")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "after")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "after")
(PUNCT "]")
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
(ID "new")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "power")
(PUNCT ",")
(ID "Attr")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(ID "names")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "Name")
(PUNCT "(")
(ID "names")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(PUNCT "+")
(PUNCT "[")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "trailer")
(PUNCT ",")
(PUNCT "[")
(ID "results")
(PUNCT "[")
(LIT "lpar")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "newarglist")
(PUNCT ",")
(ID "results")
(PUNCT "[")
(LIT "rpar")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(PUNCT "]")
(PUNCT "+")
(ID "after")
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
(KEYWORD def)
(ID "is_tuple")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Does the node represent a tuple literal?")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "Node")
(PUNCT ")")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "==")
(PUNCT "[")
(ID "LParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "RParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "Node")
(PUNCT ")")
(KEYWORD and)
(ID "len")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(PUNCT "==")
(LIT 3)
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(ID "Leaf")
(PUNCT ")")
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "Node")
(PUNCT ")")
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ",")
(ID "Leaf")
(PUNCT ")")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(LIT "(")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(LIT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "is_list")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Does the node represent a list literal?")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "Node")
(PUNCT ")")
(KEYWORD and)
(ID "len")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(PUNCT ">")
(LIT 1)
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(ID "Leaf")
(PUNCT ")")
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "Leaf")
(PUNCT ")")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(LIT "[")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(LIT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parenthesize")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "atom")
(PUNCT ",")
(PUNCT "[")
(ID "LParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "node")
(PUNCT ",")
(ID "RParen")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "consuming_calls")
(PUNCT "=")
(PUNCT "{")
(LIT "sorted")
(PUNCT ",")
(LIT "list")
(PUNCT ",")
(LIT "set")
(PUNCT ",")
(LIT "any")
(PUNCT ",")
(LIT "all")
(PUNCT ",")
(LIT "tuple")
(PUNCT ",")
(LIT "sum")
(PUNCT ",")
(LIT "min")
(PUNCT ",")
(LIT "max")
(PUNCT ",")
(LIT "enumerate")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "attr_chain")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Follow an attribute chain.\n\n    If you have a chain of objects where a.foo -> b, b.foo-> c, etc,\n    use this to iterate over all objects in the chain. Iteration is\n    terminated by getattr(x, attr) is None.\n\n    Args:\n        obj: the starting object\n        attr: the name of the chaining attribute\n\n    Yields:\n        Each successive object in the chain.\n    ")
(NEWLINE)
(ID "next")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(ID "next")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "next")
(NEWLINE)
(ID "next")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "next")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "p0")
(PUNCT "=")
(LIT "for_stmt< 'for' any 'in' node=any ':' any* >\n        | comp_for< 'for' any 'in' node=any any* >\n     ")
(NEWLINE)
(ID "p1")
(PUNCT "=")
(LIT "\npower<\n    ( 'iter' | 'list' | 'tuple' | 'sorted' | 'set' | 'sum' |\n      'any' | 'all' | 'enumerate' | (any* trailer< '.' 'join' >) )\n    trailer< '(' node=any ')' >\n    any*\n>\n")
(NEWLINE)
(ID "p2")
(PUNCT "=")
(LIT "\npower<\n    ( 'sorted' | 'enumerate' )\n    trailer< '(' arglist<node=any any*> ')' >\n    any*\n>\n")
(NEWLINE)
(ID "pats_built")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD def)
(ID "in_special_context")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Returns true if node is in an environment where all that is required\n        of it is being iterable (ie, it doesn't matter if it returns a list\n        or an iterator).\n        See test_map_nochange in test_fixers.py for some examples and tests.\n        ")
(NEWLINE)
(KEYWORD global)
(ID "p0")
(PUNCT ",")
(ID "p1")
(PUNCT ",")
(ID "p2")
(PUNCT ",")
(ID "pats_built")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "pats_built")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "p0")
(PUNCT "=")
(ID "patcomp")
(PUNCT ".")
(ID "compile_pattern")
(PUNCT "(")
(ID "p0")
(PUNCT ")")
(NEWLINE)
(ID "p1")
(PUNCT "=")
(ID "patcomp")
(PUNCT ".")
(ID "compile_pattern")
(PUNCT "(")
(ID "p1")
(PUNCT ")")
(NEWLINE)
(ID "p2")
(PUNCT "=")
(ID "patcomp")
(PUNCT ".")
(ID "compile_pattern")
(PUNCT "(")
(ID "p2")
(PUNCT ")")
(NEWLINE)
(ID "pats_built")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "patterns")
(PUNCT "=")
(PUNCT "[")
(ID "p0")
(PUNCT ",")
(ID "p1")
(PUNCT ",")
(ID "p2")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "pattern")
(PUNCT ",")
(ID "parent")
(KEYWORD in)
(ID "zip")
(PUNCT "(")
(ID "patterns")
(PUNCT ",")
(ID "attr_chain")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(LIT "parent")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "results")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(ID "pattern")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "parent")
(PUNCT ",")
(ID "results")
(PUNCT ")")
(KEYWORD and)
(ID "results")
(PUNCT "[")
(LIT "node")
(PUNCT "]")
(KEYWORD is)
(ID "node")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "is_probably_builtin")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Check that something isn't an attribute or function name etc.\n    ")
(NEWLINE)
(ID "prev")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prev_sibling")
(NEWLINE)
(KEYWORD if)
(ID "prev")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "prev")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "DOT")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "parent")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "parent")
(NEWLINE)
(KEYWORD if)
(ID "parent")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "funcdef")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "classdef")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "parent")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "expr_stmt")
(KEYWORD and)
(ID "parent")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(KEYWORD is)
(ID "node")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "parent")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "parameters")
(KEYWORD or)
(PUNCT "(")
(ID "parent")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "typedargslist")
(KEYWORD and)
(PUNCT "(")
(PUNCT "(")
(ID "prev")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "prev")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "COMMA")
(PUNCT ")")
(KEYWORD or)
(ID "parent")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(KEYWORD is)
(ID "node")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "find_indentation")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Find the indentation of *node*.")
(NEWLINE)
(KEYWORD while)
(ID "node")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "suite")
(KEYWORD and)
(ID "len")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(PUNCT ">")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "indent")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "indent")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "INDENT")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "indent")
(PUNCT ".")
(ID "value")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "node")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "parent")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "make_suite")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "suite")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(ID "node")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "parent")
(PUNCT ",")
(ID "node")
(PUNCT ".")
(ID "parent")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "parent")
(PUNCT ",")
(KEYWORD None)
(NEWLINE)
(ID "suite")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "suite")
(PUNCT ",")
(PUNCT "[")
(ID "node")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "suite")
(PUNCT ".")
(ID "parent")
(PUNCT "=")
(ID "parent")
(NEWLINE)
(KEYWORD return)
(ID "suite")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "find_root")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Find the top level namespace.")
(NEWLINE)
(KEYWORD while)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "!=")
(ID "syms")
(PUNCT ".")
(ID "file_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "parent")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "node")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "root found before file_input node was found.")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "does_tree_import")
(PUNCT "(")
(ID "package")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Returns true if name is imported from package at the\n        top level of the tree which node belongs to.\n        To cover the case of an import like 'import foo', use\n        None for the package and 'foo' for the name. ")
(NEWLINE)
(ID "binding")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "find_root")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "bool")
(PUNCT "(")
(ID "binding")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "is_import")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Returns true if the node is an import statement.")
(NEWLINE)
(KEYWORD return)
(ID "node")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "import_name")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "import_from")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "touch_import")
(PUNCT "(")
(ID "package")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Works like `does_tree_import` but adds an import statement\n        if it was not imported. ")
(NEWLINE)
(KEYWORD def)
(ID "is_import_stmt")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "simple_stmt")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(KEYWORD and)
(ID "is_import")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "root")
(PUNCT "=")
(ID "find_root")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "does_tree_import")
(PUNCT "(")
(ID "package")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "root")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "insert_pos")
(PUNCT "=")
(ID "offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD for)
(ID "idx")
(PUNCT ",")
(ID "node")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "root")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "is_import_stmt")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "offset")
(PUNCT ",")
(ID "node2")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "root")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(ID "idx")
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "is_import_stmt")
(PUNCT "(")
(ID "node2")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "insert_pos")
(PUNCT "=")
(ID "idx")
(PUNCT "+")
(ID "offset")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "insert_pos")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "idx")
(PUNCT ",")
(ID "node")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "root")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "simple_stmt")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "STRING")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "insert_pos")
(PUNCT "=")
(ID "idx")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "package")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "import_")
(PUNCT "=")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "import_name")
(PUNCT ",")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(LIT "import")
(PUNCT ")")
(PUNCT ",")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "import_")
(PUNCT "=")
(ID "FromImport")
(PUNCT "(")
(ID "package")
(PUNCT ",")
(PUNCT "[")
(ID "Leaf")
(PUNCT "(")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "children")
(PUNCT "=")
(PUNCT "[")
(ID "import_")
(PUNCT ",")
(ID "Newline")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "insert_child")
(PUNCT "(")
(ID "insert_pos")
(PUNCT ",")
(ID "Node")
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "simple_stmt")
(PUNCT ",")
(ID "children")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_def_syms")
(PUNCT "=")
(PUNCT "{")
(ID "syms")
(PUNCT ".")
(ID "classdef")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "funcdef")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "node")
(PUNCT ",")
(ID "package")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Returns the node which binds variable name, otherwise None.\n        If optional argument package is supplied, only imports will\n        be returned.\n        See test cases for examples.")
(NEWLINE)
(KEYWORD for)
(ID "child")
(KEYWORD in)
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "for_stmt")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "_find")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "child")
(NEWLINE)
(DEDENT)
(ID "n")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "make_suite")
(PUNCT "(")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(ID "ret")
(PUNCT "=")
(ID "n")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(PUNCT "(")
(ID "syms")
(PUNCT ".")
(ID "if_stmt")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "while_stmt")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "make_suite")
(PUNCT "(")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(ID "ret")
(PUNCT "=")
(ID "n")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "try_stmt")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "make_suite")
(PUNCT "(")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(ID "n")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "i")
(PUNCT ",")
(ID "kid")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 3)
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "kid")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "COLON")
(KEYWORD and)
(ID "kid")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(LIT ":")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "make_suite")
(PUNCT "(")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 4)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(ID "ret")
(PUNCT "=")
(ID "n")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(KEYWORD in)
(ID "_def_syms")
(KEYWORD and)
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(ID "child")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "_is_import_binding")
(PUNCT "(")
(ID "child")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(ID "child")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "simple_stmt")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(ID "find_binding")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "child")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "expr_stmt")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "_find")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT "=")
(ID "child")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "ret")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "package")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "ret")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "is_import")
(PUNCT "(")
(ID "ret")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "ret")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "_block_syms")
(PUNCT "=")
(PUNCT "{")
(ID "syms")
(PUNCT ".")
(ID "funcdef")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "classdef")
(PUNCT ",")
(ID "syms")
(PUNCT ".")
(ID "trailer")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "_find")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "nodes")
(PUNCT "=")
(PUNCT "[")
(ID "node")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(ID "nodes")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT "=")
(ID "nodes")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT ">")
(LIT 256)
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "type")
(KEYWORD not)
(KEYWORD in)
(ID "_block_syms")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "nodes")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "node")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_is_import_binding")
(PUNCT "(")
(ID "node")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "package")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " Will reuturn node if node will import name, or node\n        will import * from package.  None is returned otherwise.\n        See test cases for examples. ")
(NEWLINE)
(KEYWORD if)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_name")
(KEYWORD and)
(KEYWORD not)
(ID "package")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "imp")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "imp")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "dotted_as_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "child")
(KEYWORD in)
(ID "imp")
(PUNCT ".")
(ID "children")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "dotted_as_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "child")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "imp")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "dotted_as_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "last")
(PUNCT "=")
(ID "imp")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "last")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "last")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "imp")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "imp")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "node")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_from")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "package")
(KEYWORD and)
(ID "str")
(PUNCT "(")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(PUNCT "!=")
(ID "package")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "n")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "package")
(KEYWORD and)
(ID "_find")
(PUNCT "(")
(LIT "as")
(PUNCT ",")
(ID "n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "n")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_as_names")
(KEYWORD and)
(ID "_find")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "n")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_as_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "child")
(PUNCT "=")
(ID "n")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "child")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "n")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "n")
(PUNCT ".")
(ID "value")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "package")
(KEYWORD and)
(ID "n")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "STAR")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ENDMARKER)
