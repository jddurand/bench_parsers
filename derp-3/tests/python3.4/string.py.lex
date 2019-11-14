(LIT "A collection of string constants.\n\nPublic module variables:\n\nwhitespace -- a string containing all ASCII whitespace\nascii_lowercase -- a string containing all ASCII lowercase letters\nascii_uppercase -- a string containing all ASCII uppercase letters\nascii_letters -- a string containing all ASCII letters\ndigits -- a string containing all ASCII decimal digits\nhexdigits -- a string containing all ASCII hexadecimal digits\noctdigits -- a string containing all ASCII octal digits\npunctuation -- a string containing all ASCII punctuation characters\nprintable -- a string containing all ASCII characters considered printable\n\n")
(NEWLINE)
(KEYWORD import)
(ID "_string")
(NEWLINE)
(ID "whitespace")
(PUNCT "=")
(LIT " \t\n\r\v\f")
(NEWLINE)
(ID "ascii_lowercase")
(PUNCT "=")
(LIT "abcdefghijklmnopqrstuvwxyz")
(NEWLINE)
(ID "ascii_uppercase")
(PUNCT "=")
(LIT "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
(NEWLINE)
(ID "ascii_letters")
(PUNCT "=")
(ID "ascii_lowercase")
(PUNCT "+")
(ID "ascii_uppercase")
(NEWLINE)
(ID "digits")
(PUNCT "=")
(LIT "0123456789")
(NEWLINE)
(ID "hexdigits")
(PUNCT "=")
(ID "digits")
(PUNCT "+")
(LIT "abcdef")
(PUNCT "+")
(LIT "ABCDEF")
(NEWLINE)
(ID "octdigits")
(PUNCT "=")
(LIT "01234567")
(NEWLINE)
(ID "punctuation")
(PUNCT "=")
(LIT "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~")
(NEWLINE)
(ID "printable")
(PUNCT "=")
(ID "digits")
(PUNCT "+")
(ID "ascii_letters")
(PUNCT "+")
(ID "punctuation")
(PUNCT "+")
(ID "whitespace")
(NEWLINE)
(KEYWORD def)
(ID "capwords")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(ID "sep")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "capwords(s [,sep]) -> string\n\n    Split the argument into words using split, capitalize each\n    word using capitalize, and join the capitalized words using\n    join.  If the optional second argument sep is absent or None,\n    runs of whitespace characters are replaced by a single space\n    and leading and trailing whitespace are removed, otherwise\n    sep is used to split and join the words.\n\n    ")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "sep")
(KEYWORD or)
(LIT " ")
(PUNCT ")")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "x")
(PUNCT ".")
(ID "capitalize")
(PUNCT "(")
(PUNCT ")")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "s")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(ID "sep")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD import)
(ID "re")
(KEYWORD as)
(ID "_re")
(NEWLINE)
(KEYWORD from)
(ID "collections")
(KEYWORD import)
(ID "ChainMap")
(NEWLINE)
(KEYWORD class)
(ID "_TemplateMetaclass")
(PUNCT "(")
(ID "type")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pattern")
(PUNCT "=")
(LIT "\n    %(delim)s(?:\n      (?P<escaped>%(delim)s) |   # Escape sequence of two delimiters\n      (?P<named>%(id)s)      |   # delimiter and a Python identifier\n      {(?P<braced>%(id)s)}   |   # delimiter and a braced identifier\n      (?P<invalid>)              # Other ill-formed delimiter exprs\n    )\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "cls")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "bases")
(PUNCT ",")
(ID "dct")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_TemplateMetaclass")
(PUNCT ",")
(ID "cls")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "bases")
(PUNCT ",")
(ID "dct")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT "pattern")
(KEYWORD in)
(ID "dct")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pattern")
(PUNCT "=")
(ID "cls")
(PUNCT ".")
(ID "pattern")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pattern")
(PUNCT "=")
(ID "_TemplateMetaclass")
(PUNCT ".")
(ID "pattern")
(PUNCT "%")
(PUNCT "{")
(LIT "delim")
(PUNCT ":")
(ID "_re")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "cls")
(PUNCT ".")
(ID "delimiter")
(PUNCT ")")
(PUNCT ",")
(LIT "id")
(PUNCT ":")
(ID "cls")
(PUNCT ".")
(ID "idpattern")
(PUNCT ",")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(ID "cls")
(PUNCT ".")
(ID "pattern")
(PUNCT "=")
(ID "_re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(ID "pattern")
(PUNCT ",")
(ID "cls")
(PUNCT ".")
(ID "flags")
(PUNCT "|")
(ID "_re")
(PUNCT ".")
(ID "VERBOSE")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Template")
(PUNCT "(")
(ID "metaclass")
(PUNCT "=")
(ID "_TemplateMetaclass")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A string class for supporting $-substitutions.")
(NEWLINE)
(ID "delimiter")
(PUNCT "=")
(LIT "$")
(NEWLINE)
(ID "idpattern")
(PUNCT "=")
(LIT "[_a-z][_a-z0-9]*")
(NEWLINE)
(ID "flags")
(PUNCT "=")
(ID "_re")
(PUNCT ".")
(ID "IGNORECASE")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "template")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "template")
(PUNCT "=")
(ID "template")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_invalid")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "mo")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "mo")
(PUNCT ".")
(ID "start")
(PUNCT "(")
(LIT "invalid")
(PUNCT ")")
(NEWLINE)
(ID "lines")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "template")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(ID "keepends")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "colno")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "lineno")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "colno")
(PUNCT "=")
(ID "i")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "lines")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "lineno")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Invalid placeholder in string: line %d, col %d")
(PUNCT "%")
(PUNCT "(")
(ID "lineno")
(PUNCT ",")
(ID "colno")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "substitute")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "Too many positional arguments")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "args")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "kws")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "kws")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "ChainMap")
(PUNCT "(")
(ID "kws")
(PUNCT ",")
(ID "args")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "args")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "convert")
(PUNCT "(")
(ID "mo")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "named")
(PUNCT "=")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "named")
(PUNCT ")")
(KEYWORD or)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "braced")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "named")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "val")
(PUNCT "=")
(ID "mapping")
(PUNCT "[")
(ID "named")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(LIT "%s")
(PUNCT "%")
(PUNCT "(")
(ID "val")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "escaped")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "delimiter")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "invalid")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_invalid")
(PUNCT "(")
(ID "mo")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Unrecognized named group in pattern")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "pattern")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "pattern")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(ID "convert")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "template")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "safe_substitute")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "Too many positional arguments")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "args")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "kws")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "kws")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "ChainMap")
(PUNCT "(")
(ID "kws")
(PUNCT ",")
(ID "args")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mapping")
(PUNCT "=")
(ID "args")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "convert")
(PUNCT "(")
(ID "mo")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "named")
(PUNCT "=")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "named")
(PUNCT ")")
(KEYWORD or)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "braced")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "named")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%s")
(PUNCT "%")
(PUNCT "(")
(ID "mapping")
(PUNCT "[")
(ID "named")
(PUNCT "]")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "escaped")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "delimiter")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "invalid")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Unrecognized named group in pattern")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "pattern")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "pattern")
(PUNCT ".")
(ID "sub")
(PUNCT "(")
(ID "convert")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "template")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Formatter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "format")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "format_string")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "vformat")
(PUNCT "(")
(ID "format_string")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "vformat")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "format_string")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "used_args")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "result")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_vformat")
(PUNCT "(")
(ID "format_string")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ",")
(ID "used_args")
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "check_unused_args")
(PUNCT "(")
(ID "used_args")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "result")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_vformat")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "format_string")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ",")
(ID "used_args")
(PUNCT ",")
(ID "recursion_depth")
(PUNCT ",")
(ID "auto_arg_index")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "recursion_depth")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Max string recursion exceeded")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "result")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "literal_text")
(PUNCT ",")
(ID "field_name")
(PUNCT ",")
(ID "format_spec")
(PUNCT ",")
(ID "conversion")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "format_string")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "literal_text")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "result")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "literal_text")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "field_name")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "field_name")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "auto_arg_index")
(KEYWORD is)
(KEYWORD False)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "cannot switch from manual field ")
(LIT "specification to automatic field ")
(LIT "numbering")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "field_name")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "auto_arg_index")
(PUNCT ")")
(NEWLINE)
(ID "auto_arg_index")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "field_name")
(PUNCT ".")
(ID "isdigit")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "auto_arg_index")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "cannot switch from manual field ")
(LIT "specification to automatic field ")
(LIT "numbering")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "auto_arg_index")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "obj")
(PUNCT ",")
(ID "arg_used")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_field")
(PUNCT "(")
(ID "field_name")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(NEWLINE)
(ID "used_args")
(PUNCT ".")
(ID "add")
(PUNCT "(")
(ID "arg_used")
(PUNCT ")")
(NEWLINE)
(ID "obj")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "convert_field")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "conversion")
(PUNCT ")")
(NEWLINE)
(ID "format_spec")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_vformat")
(PUNCT "(")
(ID "format_spec")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ",")
(ID "used_args")
(PUNCT ",")
(ID "recursion_depth")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(ID "auto_arg_index")
(PUNCT "=")
(ID "auto_arg_index")
(PUNCT ")")
(NEWLINE)
(ID "result")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "format_field")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "format_spec")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "result")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_value")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "key")
(PUNCT ",")
(ID "int")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "args")
(PUNCT "[")
(ID "key")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "kwargs")
(PUNCT "[")
(ID "key")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "check_unused_args")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "used_args")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "format_field")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "format_spec")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "format")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "format_spec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "convert_field")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "conversion")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "conversion")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "conversion")
(PUNCT "==")
(LIT "s")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "str")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "conversion")
(PUNCT "==")
(LIT "r")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "conversion")
(PUNCT "==")
(LIT "a")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "ascii")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Unknown conversion specifier {0!s}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "conversion")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "format_string")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_string")
(PUNCT ".")
(ID "formatter_parser")
(PUNCT "(")
(ID "format_string")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_field")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "field_name")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "first")
(PUNCT ",")
(ID "rest")
(PUNCT "=")
(ID "_string")
(PUNCT ".")
(ID "formatter_field_name_split")
(PUNCT "(")
(ID "field_name")
(PUNCT ")")
(NEWLINE)
(ID "obj")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_value")
(PUNCT "(")
(ID "first")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwargs")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "is_attr")
(PUNCT ",")
(ID "i")
(KEYWORD in)
(ID "rest")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "is_attr")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "obj")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "obj")
(PUNCT "=")
(ID "obj")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "obj")
(PUNCT ",")
(ID "first")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
