(LIT "Python version compatibility support for minidom.\n\nThis module contains internal implementation details and\nshould not be imported; use xml.dom.minidom instead.\n")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "NodeList")
(PUNCT ",")
(LIT "EmptyNodeList")
(PUNCT ",")
(LIT "StringTypes")
(PUNCT ",")
(LIT "defproperty")
(PUNCT "]")
(NEWLINE)
(KEYWORD import)
(ID "xml")
(PUNCT ".")
(ID "dom")
(NEWLINE)
(ID "StringTypes")
(PUNCT "=")
(PUNCT "(")
(ID "str")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "NodeList")
(PUNCT "(")
(ID "list")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "item")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "index")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT 0)
(PUNCT "<=")
(ID "index")
(PUNCT "<")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT "[")
(ID "index")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_get_length")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_length")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NoModificationAllowedErr")
(PUNCT "(")
(LIT "attempt to modify read-only attribute 'length'")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "length")
(PUNCT "=")
(ID "property")
(PUNCT "(")
(ID "_get_length")
(PUNCT ",")
(ID "_set_length")
(PUNCT ",")
(ID "doc")
(PUNCT "=")
(LIT "The number of nodes in the NodeList.")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__getstate__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "list")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__setstate__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(PUNCT "=")
(ID "state")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "EmptyNodeList")
(PUNCT "(")
(ID "tuple")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__add__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "NL")
(PUNCT "=")
(ID "NodeList")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "NL")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "other")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "NL")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__radd__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "NL")
(PUNCT "=")
(ID "NodeList")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "NL")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "other")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "NL")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "item")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "index")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_length")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_length")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NoModificationAllowedErr")
(PUNCT "(")
(LIT "attempt to modify read-only attribute 'length'")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "length")
(PUNCT "=")
(ID "property")
(PUNCT "(")
(ID "_get_length")
(PUNCT ",")
(ID "_set_length")
(PUNCT ",")
(ID "doc")
(PUNCT "=")
(LIT "The number of nodes in the NodeList.")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "defproperty")
(PUNCT "(")
(ID "klass")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "doc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "get")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "klass")
(PUNCT ",")
(PUNCT "(")
(LIT "_get_")
(PUNCT "+")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "set")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NoModificationAllowedErr")
(PUNCT "(")
(LIT "attempt to modify read-only attribute ")
(PUNCT "+")
(ID "repr")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD assert)
(KEYWORD not)
(ID "hasattr")
(PUNCT "(")
(ID "klass")
(PUNCT ",")
(LIT "_set_")
(PUNCT "+")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(LIT "expected not to find _set_")
(PUNCT "+")
(ID "name")
(NEWLINE)
(ID "prop")
(PUNCT "=")
(ID "property")
(PUNCT "(")
(ID "get")
(PUNCT ",")
(ID "set")
(PUNCT ",")
(ID "doc")
(PUNCT "=")
(ID "doc")
(PUNCT ")")
(NEWLINE)
(ID "setattr")
(PUNCT "(")
(ID "klass")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "prop")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)