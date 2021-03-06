(LIT "Macintosh-specific module for conversion between pathnames and URLs.\n\nDo not import directly; use urllib instead.")
(NEWLINE)
(KEYWORD import)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "url2pathname")
(PUNCT ",")
(LIT "pathname2url")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "url2pathname")
(PUNCT "(")
(ID "pathname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "OS-specific conversion from a relative URL of the 'file' scheme\n    to a file system path; not recommended for general use.")
(NEWLINE)
(ID "tp")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "splittype")
(PUNCT "(")
(ID "pathname")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "tp")
(KEYWORD and)
(ID "tp")
(PUNCT "!=")
(LIT "file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "Cannot convert non-local URL to pathname")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "pathname")
(PUNCT "[")
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(PUNCT "==")
(LIT "///")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pathname")
(PUNCT "=")
(ID "pathname")
(PUNCT "[")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "pathname")
(PUNCT "[")
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(PUNCT "==")
(LIT "//")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "Cannot convert non-local URL to pathname")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "components")
(PUNCT "=")
(ID "pathname")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(NEWLINE)
(ID "i")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD while)
(ID "i")
(PUNCT "<")
(ID "len")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "==")
(LIT ".")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "==")
(LIT "..")
(KEYWORD and)
(ID "i")
(PUNCT ">")
(LIT 0)
(KEYWORD and)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(LIT "")
(PUNCT ",")
(LIT "..")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "i")
(PUNCT "=")
(ID "i")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "==")
(LIT "")
(KEYWORD and)
(ID "i")
(PUNCT ">")
(LIT 0)
(KEYWORD and)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "!=")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "i")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "components")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rv")
(PUNCT "=")
(LIT ":")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD while)
(ID "i")
(PUNCT "<")
(ID "len")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(KEYWORD and)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "==")
(LIT "..")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "i")
(PUNCT "=")
(ID "i")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "rv")
(PUNCT "=")
(LIT ":")
(PUNCT "+")
(LIT ":")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "unquote")
(PUNCT "(")
(ID "rv")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pathname2url")
(PUNCT "(")
(ID "pathname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "OS-specific conversion from a file system path to a relative URL\n    of the 'file' scheme; not recommended for general use.")
(NEWLINE)
(KEYWORD if)
(LIT "/")
(KEYWORD in)
(ID "pathname")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "Cannot convert pathname containing slashes")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "components")
(PUNCT "=")
(ID "pathname")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ":")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "components")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "components")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "components")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "components")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "components")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "=")
(LIT "..")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "components")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "_pncomp2url")
(PUNCT ",")
(ID "components")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isabs")
(PUNCT "(")
(ID "pathname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "/")
(PUNCT "+")
(LIT "/")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "/")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_pncomp2url")
(PUNCT "(")
(ID "component")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(ID "component")
(PUNCT "[")
(PUNCT ":")
(LIT 31)
(PUNCT "]")
(PUNCT ",")
(ID "safe")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
