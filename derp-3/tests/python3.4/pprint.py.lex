(LIT "Support to pretty-print lists, tuples, & dictionaries recursively.\n\nVery simple, but useful, especially in debugging data structures.\n\nClasses\n-------\n\nPrettyPrinter()\n    Handle pretty-printing operations onto a stream using a configured\n    set of formatting parameters.\n\nFunctions\n---------\n\npformat()\n    Format a Python object into a pretty-printed representation.\n\npprint()\n    Pretty-print a Python object to a stream [default is sys.stdout].\n\nsaferepr()\n    Generate a 'standard' repr()-like value, but protect against recursive\n    data structures.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(KEYWORD as)
(ID "_sys")
(NEWLINE)
(KEYWORD from)
(ID "collections")
(KEYWORD import)
(ID "OrderedDict")
(KEYWORD as)
(ID "_OrderedDict")
(NEWLINE)
(KEYWORD from)
(ID "io")
(KEYWORD import)
(ID "StringIO")
(KEYWORD as)
(ID "_StringIO")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "pprint")
(PUNCT ",")
(LIT "pformat")
(PUNCT ",")
(LIT "isreadable")
(PUNCT ",")
(LIT "isrecursive")
(PUNCT ",")
(LIT "saferepr")
(PUNCT ",")
(LIT "PrettyPrinter")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "pprint")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "stream")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "indent")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 80)
(PUNCT ",")
(ID "depth")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "compact")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Pretty-print a Python object to a stream [default is sys.stdout].")
(NEWLINE)
(ID "printer")
(PUNCT "=")
(ID "PrettyPrinter")
(PUNCT "(")
(ID "stream")
(PUNCT "=")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT "=")
(ID "indent")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(ID "width")
(PUNCT ",")
(ID "depth")
(PUNCT "=")
(ID "depth")
(PUNCT ",")
(ID "compact")
(PUNCT "=")
(ID "compact")
(PUNCT ")")
(NEWLINE)
(ID "printer")
(PUNCT ".")
(ID "pprint")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pformat")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "indent")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 80)
(PUNCT ",")
(ID "depth")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "compact")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Format a Python object into a pretty-printed representation.")
(NEWLINE)
(KEYWORD return)
(ID "PrettyPrinter")
(PUNCT "(")
(ID "indent")
(PUNCT "=")
(ID "indent")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(ID "width")
(PUNCT ",")
(ID "depth")
(PUNCT "=")
(ID "depth")
(PUNCT ",")
(ID "compact")
(PUNCT "=")
(ID "compact")
(PUNCT ")")
(PUNCT ".")
(ID "pformat")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "saferepr")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Version of repr() which can handle recursive data structures.")
(NEWLINE)
(KEYWORD return)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "isreadable")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Determine if saferepr(object) is readable by eval().")
(NEWLINE)
(KEYWORD return)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "isrecursive")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Determine if object requires a recursive representation.")
(NEWLINE)
(KEYWORD return)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "_safe_key")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper function for key functions when sorting unorderable objects.\n\n    The wrapped-object will fallback to an Py2.x style comparison for\n    unorderable types (sorting first comparing the type name and then by\n    the obj ids).  Does not work recursively, so dict.items() must have\n    _safe_key applied to both the key and the value.\n\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "[")
(LIT "obj")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "obj")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "obj")
(PUNCT "=")
(ID "obj")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__lt__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rv")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "obj")
(PUNCT ".")
(ID "__lt__")
(PUNCT "(")
(ID "other")
(PUNCT ".")
(ID "obj")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "TypeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rv")
(PUNCT "=")
(ID "NotImplemented")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "rv")
(KEYWORD is)
(ID "NotImplemented")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rv")
(PUNCT "=")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "obj")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "obj")
(PUNCT ")")
(PUNCT ")")
(PUNCT "<")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(ID "other")
(PUNCT ".")
(ID "obj")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "id")
(PUNCT "(")
(ID "other")
(PUNCT ".")
(ID "obj")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "rv")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_safe_tuple")
(PUNCT "(")
(ID "t")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper function for comparing 2-tuples")
(NEWLINE)
(KEYWORD return)
(ID "_safe_key")
(PUNCT "(")
(ID "t")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(ID "_safe_key")
(PUNCT "(")
(ID "t")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "PrettyPrinter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "indent")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 80)
(PUNCT ",")
(ID "depth")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "stream")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "compact")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Handle pretty printing operations onto a stream using a set of\n        configured parameters.\n\n        indent\n            Number of spaces to indent for each level of nesting.\n\n        width\n            Attempted maximum number of columns in the output.\n\n        depth\n            The maximum depth to print out nested structures.\n\n        stream\n            The desired output stream.  If omitted (or false), the standard\n            output stream available at construction will be used.\n\n        compact\n            If true, several items will be combined in one line.\n\n        ")
(NEWLINE)
(ID "indent")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "indent")
(PUNCT ")")
(NEWLINE)
(ID "width")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "width")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(ID "indent")
(PUNCT ">=")
(LIT 0)
(PUNCT ",")
(LIT "indent must be >= 0")
(NEWLINE)
(KEYWORD assert)
(ID "depth")
(KEYWORD is)
(KEYWORD None)
(KEYWORD or)
(ID "depth")
(PUNCT ">")
(LIT 0)
(PUNCT ",")
(LIT "depth must be > 0")
(NEWLINE)
(KEYWORD assert)
(ID "width")
(PUNCT ",")
(LIT "width must be != 0")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_depth")
(PUNCT "=")
(ID "depth")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT "=")
(ID "indent")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_width")
(PUNCT "=")
(ID "width")
(NEWLINE)
(KEYWORD if)
(ID "stream")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_stream")
(PUNCT "=")
(ID "stream")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_stream")
(PUNCT "=")
(ID "_sys")
(PUNCT ".")
(ID "stdout")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_compact")
(PUNCT "=")
(ID "bool")
(PUNCT "(")
(ID "compact")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pprint")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_format")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_stream")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pformat")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sio")
(PUNCT "=")
(ID "_StringIO")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_format")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "sio")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "sio")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "isrecursive")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "isreadable")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT ",")
(ID "readable")
(PUNCT ",")
(ID "recursive")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "readable")
(KEYWORD and)
(KEYWORD not)
(ID "recursive")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_format")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT ",")
(ID "allowance")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "level")
(PUNCT "=")
(ID "level")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(ID "objid")
(PUNCT "=")
(ID "id")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "objid")
(KEYWORD in)
(ID "context")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "_recursion")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_recursive")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_readable")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "rep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "typ")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(ID "max_width")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_width")
(PUNCT "-")
(LIT 1)
(PUNCT "-")
(ID "indent")
(PUNCT "-")
(ID "allowance")
(NEWLINE)
(ID "sepLines")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(PUNCT ">")
(ID "max_width")
(NEWLINE)
(ID "write")
(PUNCT "=")
(ID "stream")
(PUNCT ".")
(ID "write")
(NEWLINE)
(KEYWORD if)
(ID "sepLines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "r")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(LIT "__repr__")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "dict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "{")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT "*")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "length")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "length")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "indent")
(PUNCT "=")
(ID "indent")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(NEWLINE)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "_OrderedDict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "items")
(PUNCT "=")
(ID "list")
(PUNCT "(")
(ID "object")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "items")
(PUNCT "=")
(ID "sorted")
(PUNCT "(")
(ID "object")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "_safe_tuple")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "key")
(PUNCT ",")
(ID "ent")
(PUNCT "=")
(ID "items")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "rep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_repr")
(PUNCT "(")
(ID "key")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(ID "write")
(PUNCT "(")
(LIT ": ")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_format")
(PUNCT "(")
(ID "ent")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT "+")
(ID "len")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(PUNCT "+")
(LIT 2)
(PUNCT ",")
(ID "allowance")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "length")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "key")
(PUNCT ",")
(ID "ent")
(KEYWORD in)
(ID "items")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_repr")
(PUNCT "(")
(ID "key")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "write")
(PUNCT "(")
(LIT ",\n%s%s: ")
(PUNCT "%")
(PUNCT "(")
(LIT " ")
(PUNCT "*")
(ID "indent")
(PUNCT ",")
(ID "rep")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_format")
(PUNCT "(")
(ID "ent")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT "+")
(ID "len")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(PUNCT "+")
(LIT 2)
(PUNCT ",")
(ID "allowance")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "indent")
(PUNCT "=")
(ID "indent")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(NEWLINE)
(KEYWORD del)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "write")
(PUNCT "(")
(LIT "}")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "list")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "tuple")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "tuple")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "set")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "set")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "frozenset")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "frozenset")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "length")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "[")
(PUNCT ")")
(NEWLINE)
(ID "endchar")
(PUNCT "=")
(LIT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "tuple")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "(")
(PUNCT ")")
(NEWLINE)
(ID "endchar")
(PUNCT "=")
(LIT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "length")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "typ")
(KEYWORD is)
(ID "set")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "{")
(PUNCT ")")
(NEWLINE)
(ID "endchar")
(PUNCT "=")
(LIT "}")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(ID "typ")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(NEWLINE)
(ID "write")
(PUNCT "(")
(LIT "({")
(PUNCT ")")
(NEWLINE)
(ID "endchar")
(PUNCT "=")
(LIT "})")
(NEWLINE)
(ID "indent")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "typ")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "object")
(PUNCT "=")
(ID "sorted")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "_safe_key")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT "*")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "length")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_format_items")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_indent_per_level")
(PUNCT ",")
(ID "allowance")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "tuple")
(PUNCT ")")
(KEYWORD and)
(ID "length")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "write")
(PUNCT "(")
(ID "endchar")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(KEYWORD and)
(ID "len")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ">")
(LIT 0)
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "str")
(PUNCT ".")
(ID "__repr__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "chunks")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "lines")
(PUNCT "=")
(ID "object")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "indent")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(ID "max_width")
(PUNCT "-=")
(LIT 2)
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "i")
(PUNCT ",")
(ID "line")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(ID "repr")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(PUNCT "<=")
(ID "max_width")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "chunks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "(\\s+)")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT "+")
(PUNCT "[")
(LIT "")
(PUNCT "]")
(NEWLINE)
(ID "current")
(PUNCT "=")
(LIT "")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "len")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "part")
(PUNCT "=")
(ID "parts")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "+")
(ID "parts")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "candidate")
(PUNCT "=")
(ID "current")
(PUNCT "+")
(ID "part")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "repr")
(PUNCT "(")
(ID "candidate")
(PUNCT ")")
(PUNCT ")")
(PUNCT ">")
(ID "max_width")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "current")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "chunks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "repr")
(PUNCT "(")
(ID "current")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "current")
(PUNCT "=")
(ID "part")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "current")
(PUNCT "=")
(ID "candidate")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "current")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "chunks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "repr")
(PUNCT "(")
(ID "current")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "chunks")
(PUNCT ")")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "i")
(PUNCT ",")
(ID "rep")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "chunks")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "i")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT "\n")
(PUNCT "+")
(LIT " ")
(PUNCT "*")
(ID "indent")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(LIT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_format_items")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "items")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT ",")
(ID "allowance")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "=")
(ID "stream")
(PUNCT ".")
(ID "write")
(NEWLINE)
(ID "delimnl")
(PUNCT "=")
(LIT ",\n")
(PUNCT "+")
(LIT " ")
(PUNCT "*")
(ID "indent")
(NEWLINE)
(ID "delim")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "width")
(PUNCT "=")
(ID "max_width")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_width")
(PUNCT "-")
(ID "indent")
(PUNCT "-")
(ID "allowance")
(PUNCT "+")
(LIT 2)
(NEWLINE)
(KEYWORD for)
(ID "ent")
(KEYWORD in)
(ID "items")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_compact")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_repr")
(PUNCT "(")
(ID "ent")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(PUNCT "+")
(LIT 2)
(NEWLINE)
(KEYWORD if)
(ID "width")
(PUNCT "<")
(ID "w")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "width")
(PUNCT "=")
(ID "max_width")
(NEWLINE)
(KEYWORD if)
(ID "delim")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "delim")
(PUNCT "=")
(ID "delimnl")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "width")
(PUNCT ">=")
(ID "w")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "width")
(PUNCT "-=")
(ID "w")
(NEWLINE)
(ID "write")
(PUNCT "(")
(ID "delim")
(PUNCT ")")
(NEWLINE)
(ID "delim")
(PUNCT "=")
(LIT ", ")
(NEWLINE)
(ID "write")
(PUNCT "(")
(ID "rep")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "write")
(PUNCT "(")
(ID "delim")
(PUNCT ")")
(NEWLINE)
(ID "delim")
(PUNCT "=")
(ID "delimnl")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_format")
(PUNCT "(")
(ID "ent")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "indent")
(PUNCT ",")
(ID "allowance")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_repr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "repr")
(PUNCT ",")
(ID "readable")
(PUNCT ",")
(ID "recursive")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_depth")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "readable")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_readable")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "recursive")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_recursive")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "repr")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "format")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Format object for a specific context, returning a string\n        and flags indicating whether the representation is 'readable'\n        and whether the object represents a recursive construct.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "typ")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "typ")
(KEYWORD is)
(ID "str")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "locale")
(KEYWORD not)
(KEYWORD in)
(ID "_sys")
(PUNCT ".")
(ID "modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "repr")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ",")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT "'")
(KEYWORD in)
(ID "object")
(KEYWORD and)
(LIT "\"")
(KEYWORD not)
(KEYWORD in)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "closure")
(PUNCT "=")
(LIT "\"")
(NEWLINE)
(ID "quotes")
(PUNCT "=")
(PUNCT "{")
(LIT "\"")
(PUNCT ":")
(LIT "\\\"")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "closure")
(PUNCT "=")
(LIT "'")
(NEWLINE)
(ID "quotes")
(PUNCT "=")
(PUNCT "{")
(LIT "'")
(PUNCT ":")
(LIT "\\'")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(ID "qget")
(PUNCT "=")
(ID "quotes")
(PUNCT ".")
(ID "get")
(NEWLINE)
(ID "sio")
(PUNCT "=")
(ID "_StringIO")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "write")
(PUNCT "=")
(ID "sio")
(PUNCT ".")
(ID "write")
(NEWLINE)
(KEYWORD for)
(ID "char")
(KEYWORD in)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "char")
(PUNCT ".")
(ID "isalpha")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(ID "char")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "write")
(PUNCT "(")
(ID "qget")
(PUNCT "(")
(ID "char")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "char")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(LIT "%s%s%s")
(PUNCT "%")
(PUNCT "(")
(ID "closure")
(PUNCT ",")
(ID "sio")
(PUNCT ".")
(ID "getvalue")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "closure")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "r")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(LIT "__repr__")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "dict")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "dict")
(PUNCT ".")
(ID "__repr__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "{}")
(PUNCT ",")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "objid")
(PUNCT "=")
(ID "id")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "maxlevels")
(KEYWORD and)
(ID "level")
(PUNCT ">=")
(ID "maxlevels")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "{...}")
(PUNCT ",")
(KEYWORD False)
(PUNCT ",")
(ID "objid")
(KEYWORD in)
(ID "context")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "objid")
(KEYWORD in)
(ID "context")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_recursion")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ",")
(KEYWORD False)
(PUNCT ",")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "readable")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "recursive")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "components")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "append")
(PUNCT "=")
(ID "components")
(PUNCT ".")
(ID "append")
(NEWLINE)
(ID "level")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(ID "saferepr")
(PUNCT "=")
(ID "_safe_repr")
(NEWLINE)
(ID "items")
(PUNCT "=")
(ID "sorted")
(PUNCT "(")
(ID "object")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "_safe_tuple")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "items")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "krepr")
(PUNCT ",")
(ID "kreadable")
(PUNCT ",")
(ID "krecur")
(PUNCT "=")
(ID "saferepr")
(PUNCT "(")
(ID "k")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "vrepr")
(PUNCT ",")
(ID "vreadable")
(PUNCT ",")
(ID "vrecur")
(PUNCT "=")
(ID "saferepr")
(PUNCT "(")
(ID "v")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "append")
(PUNCT "(")
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "krepr")
(PUNCT ",")
(ID "vrepr")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "readable")
(PUNCT "=")
(ID "readable")
(KEYWORD and)
(ID "kreadable")
(KEYWORD and)
(ID "vreadable")
(NEWLINE)
(KEYWORD if)
(ID "krecur")
(KEYWORD or)
(ID "vrecur")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "recursive")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD del)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(LIT "{%s}")
(PUNCT "%")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ",")
(ID "readable")
(PUNCT ",")
(ID "recursive")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "list")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "tuple")
(PUNCT ")")
(KEYWORD and)
(ID "r")
(KEYWORD is)
(ID "tuple")
(PUNCT ".")
(ID "__repr__")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "issubclass")
(PUNCT "(")
(ID "typ")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "[]")
(PUNCT ",")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "format")
(PUNCT "=")
(LIT "[%s]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "len")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "format")
(PUNCT "=")
(LIT "(%s,)")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "()")
(PUNCT ",")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "format")
(PUNCT "=")
(LIT "(%s)")
(NEWLINE)
(DEDENT)
(ID "objid")
(PUNCT "=")
(ID "id")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "maxlevels")
(KEYWORD and)
(ID "level")
(PUNCT ">=")
(ID "maxlevels")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "format")
(PUNCT "%")
(LIT "...")
(PUNCT ",")
(KEYWORD False)
(PUNCT ",")
(ID "objid")
(KEYWORD in)
(ID "context")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "objid")
(KEYWORD in)
(ID "context")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_recursion")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ",")
(KEYWORD False)
(PUNCT ",")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "readable")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "recursive")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "components")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "append")
(PUNCT "=")
(ID "components")
(PUNCT ".")
(ID "append")
(NEWLINE)
(ID "level")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(KEYWORD for)
(ID "o")
(KEYWORD in)
(ID "object")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "orepr")
(PUNCT ",")
(ID "oreadable")
(PUNCT ",")
(ID "orecur")
(PUNCT "=")
(ID "_safe_repr")
(PUNCT "(")
(ID "o")
(PUNCT ",")
(ID "context")
(PUNCT ",")
(ID "maxlevels")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(NEWLINE)
(ID "append")
(PUNCT "(")
(ID "orepr")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "oreadable")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "readable")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "orecur")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "recursive")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD del)
(ID "context")
(PUNCT "[")
(ID "objid")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "format")
(PUNCT "%")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ",")
(ID "readable")
(PUNCT ",")
(ID "recursive")
(NEWLINE)
(DEDENT)
(ID "rep")
(PUNCT "=")
(ID "repr")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "rep")
(PUNCT ",")
(PUNCT "(")
(ID "rep")
(KEYWORD and)
(KEYWORD not)
(ID "rep")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "<")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_recursion")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(LIT "<Recursion on %s with id=%s>")
(PUNCT "%")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ".")
(ID "__name__")
(PUNCT ",")
(ID "id")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_perfcheck")
(PUNCT "(")
(ID "object")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD if)
(ID "object")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "object")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "string")
(PUNCT ",")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(PUNCT ",")
(PUNCT "[")
(LIT 3)
(PUNCT ",")
(LIT 4)
(PUNCT "]")
(PUNCT ",")
(PUNCT "{")
(LIT 5)
(PUNCT ":")
(LIT 6)
(PUNCT ",")
(LIT 7)
(PUNCT ":")
(LIT 8)
(PUNCT "}")
(PUNCT ")")
(PUNCT "]")
(PUNCT "*")
(LIT 100000)
(NEWLINE)
(DEDENT)
(ID "p")
(PUNCT "=")
(ID "PrettyPrinter")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "t1")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "_safe_repr")
(PUNCT "(")
(ID "object")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "t2")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "p")
(PUNCT ".")
(ID "pformat")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(NEWLINE)
(ID "t3")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "_safe_repr:")
(PUNCT ",")
(ID "t2")
(PUNCT "-")
(ID "t1")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "pformat:")
(PUNCT ",")
(ID "t3")
(PUNCT "-")
(ID "t2")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_perfcheck")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
