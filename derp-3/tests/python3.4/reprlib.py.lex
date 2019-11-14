(LIT "Redo the builtin repr() (representation) but with limits on most sizes.")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "Repr")
(PUNCT ",")
(LIT "repr")
(PUNCT ",")
(LIT "recursive_repr")
(PUNCT "]")
(NEWLINE)
(KEYWORD import)
(ID "builtins")
(NEWLINE)
(KEYWORD from)
(ID "itertools")
(KEYWORD import)
(ID "islice")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "_thread")
(KEYWORD import)
(ID "get_ident")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "_dummy_thread")
(KEYWORD import)
(ID "get_ident")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "recursive_repr")
(PUNCT "(")
(ID "fillvalue")
(PUNCT "=")
(LIT "...")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Decorator to make a repr function return fillvalue for a recursive call")
(NEWLINE)
(KEYWORD def)
(ID "decorating_function")
(PUNCT "(")
(ID "user_function")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "repr_running")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "wrapper")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "key")
(PUNCT "=")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ",")
(ID "get_ident")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "key")
(KEYWORD in)
(ID "repr_running")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "fillvalue")
(NEWLINE)
(DEDENT)
(ID "repr_running")
(PUNCT ".")
(ID "add")
(PUNCT "(")
(ID "key")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "result")
(PUNCT "=")
(ID "user_function")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "repr_running")
(PUNCT ".")
(ID "discard")
(PUNCT "(")
(ID "key")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "result")
(NEWLINE)
(DEDENT)
(ID "wrapper")
(PUNCT ".")
(ID "__module__")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "user_function")
(PUNCT ",")
(LIT "__module__")
(PUNCT ")")
(NEWLINE)
(ID "wrapper")
(PUNCT ".")
(ID "__doc__")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "user_function")
(PUNCT ",")
(LIT "__doc__")
(PUNCT ")")
(NEWLINE)
(ID "wrapper")
(PUNCT ".")
(ID "__name__")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "user_function")
(PUNCT ",")
(LIT "__name__")
(PUNCT ")")
(NEWLINE)
(ID "wrapper")
(PUNCT ".")
(ID "__annotations__")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "user_function")
(PUNCT ",")
(LIT "__annotations__")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "wrapper")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "decorating_function")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Repr")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "maxlevel")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxtuple")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxlist")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxarray")
(PUNCT "=")
(LIT 5)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxdict")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxset")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxfrozenset")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxdeque")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxstring")
(PUNCT "=")
(LIT 30)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxlong")
(PUNCT "=")
(LIT 40)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "maxother")
(PUNCT "=")
(LIT 30)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "repr1")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxlevel")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr1")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "typename")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(PUNCT ".")
(ID "__name__")
(NEWLINE)
(KEYWORD if)
(LIT " ")
(KEYWORD in)
(ID "typename")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT "=")
(ID "typename")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "typename")
(PUNCT "=")
(LIT "_")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(LIT "repr_")
(PUNCT "+")
(ID "typename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(LIT "repr_")
(PUNCT "+")
(ID "typename")
(PUNCT ")")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "repr_instance")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_repr_iterable")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(ID "left")
(PUNCT ",")
(ID "right")
(PUNCT ",")
(ID "maxiter")
(PUNCT ",")
(ID "trail")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "level")
(PUNCT "<=")
(LIT 0)
(KEYWORD and)
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(LIT "...")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newlevel")
(PUNCT "=")
(ID "level")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(ID "repr1")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "repr1")
(NEWLINE)
(ID "pieces")
(PUNCT "=")
(PUNCT "[")
(ID "repr1")
(PUNCT "(")
(ID "elem")
(PUNCT ",")
(ID "newlevel")
(PUNCT ")")
(KEYWORD for)
(ID "elem")
(KEYWORD in)
(ID "islice")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "maxiter")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT ">")
(ID "maxiter")
(PUNCT ":")
(ID "pieces")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "...")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "pieces")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT "==")
(LIT 1)
(KEYWORD and)
(ID "trail")
(PUNCT ":")
(ID "right")
(PUNCT "=")
(ID "trail")
(PUNCT "+")
(ID "right")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(LIT "%s%s%s")
(PUNCT "%")
(PUNCT "(")
(ID "left")
(PUNCT ",")
(ID "s")
(PUNCT ",")
(ID "right")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_tuple")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(LIT "(")
(PUNCT ",")
(LIT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxtuple")
(PUNCT ",")
(LIT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_list")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(LIT "[")
(PUNCT ",")
(LIT "]")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxlist")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_array")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "header")
(PUNCT "=")
(LIT "array('%s', [")
(PUNCT "%")
(ID "x")
(PUNCT ".")
(ID "typecode")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(ID "header")
(PUNCT ",")
(LIT "])")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxarray")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_set")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT "=")
(ID "_possibly_sorted")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(LIT "set([")
(PUNCT ",")
(LIT "])")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxset")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_frozenset")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT "=")
(ID "_possibly_sorted")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(LIT "frozenset([")
(PUNCT ",")
(LIT "])")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxfrozenset")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_deque")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_repr_iterable")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ",")
(LIT "deque([")
(PUNCT ",")
(LIT "])")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxdeque")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_dict")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(KEYWORD return)
(LIT "{}")
(NEWLINE)
(KEYWORD if)
(ID "level")
(PUNCT "<=")
(LIT 0)
(PUNCT ":")
(KEYWORD return)
(LIT "{...}")
(NEWLINE)
(ID "newlevel")
(PUNCT "=")
(ID "level")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(ID "repr1")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "repr1")
(NEWLINE)
(ID "pieces")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "key")
(KEYWORD in)
(ID "islice")
(PUNCT "(")
(ID "_possibly_sorted")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxdict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "keyrepr")
(PUNCT "=")
(ID "repr1")
(PUNCT "(")
(ID "key")
(PUNCT ",")
(ID "newlevel")
(PUNCT ")")
(NEWLINE)
(ID "valrepr")
(PUNCT "=")
(ID "repr1")
(PUNCT "(")
(ID "x")
(PUNCT "[")
(ID "key")
(PUNCT "]")
(PUNCT ",")
(ID "newlevel")
(PUNCT ")")
(NEWLINE)
(ID "pieces")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "keyrepr")
(PUNCT ",")
(ID "valrepr")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "n")
(PUNCT ">")
(ID "self")
(PUNCT ".")
(ID "maxdict")
(PUNCT ":")
(ID "pieces")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "...")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "pieces")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "{%s}")
(PUNCT "%")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_str")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "builtins")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "x")
(PUNCT "[")
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "maxstring")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT ">")
(ID "self")
(PUNCT ".")
(ID "maxstring")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "maxstring")
(PUNCT "-")
(LIT 3)
(PUNCT ")")
(PUNCT "//")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxstring")
(PUNCT "-")
(LIT 3)
(PUNCT "-")
(ID "i")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "builtins")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "x")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(PUNCT "+")
(ID "x")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(PUNCT "-")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "s")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(PUNCT "+")
(LIT "...")
(PUNCT "+")
(ID "s")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT "-")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "s")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_int")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "builtins")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT ">")
(ID "self")
(PUNCT ".")
(ID "maxlong")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "maxlong")
(PUNCT "-")
(LIT 3)
(PUNCT ")")
(PUNCT "//")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxlong")
(PUNCT "-")
(LIT 3)
(PUNCT "-")
(ID "i")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "s")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(PUNCT "+")
(LIT "...")
(PUNCT "+")
(ID "s")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT "-")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "s")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repr_instance")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "builtins")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<%s instance at %x>")
(PUNCT "%")
(PUNCT "(")
(ID "x")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ",")
(ID "id")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT ">")
(ID "self")
(PUNCT ".")
(ID "maxother")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "maxother")
(PUNCT "-")
(LIT 3)
(PUNCT ")")
(PUNCT "//")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "maxother")
(PUNCT "-")
(LIT 3)
(PUNCT "-")
(ID "i")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "s")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(PUNCT "+")
(LIT "...")
(PUNCT "+")
(ID "s")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT "-")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "s")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_possibly_sorted")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "sorted")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "list")
(PUNCT "(")
(ID "x")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "aRepr")
(PUNCT "=")
(ID "Repr")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "repr")
(PUNCT "=")
(ID "aRepr")
(PUNCT ".")
(ID "repr")
(NEWLINE)
(ENDMARKER)