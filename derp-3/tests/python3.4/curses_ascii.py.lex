(LIT "Constants and membership tests for ASCII characters")
(NEWLINE)
(ID "NUL")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "SOH")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "STX")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "ETX")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "EOT")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "ENQ")
(PUNCT "=")
(LIT 5)
(NEWLINE)
(ID "ACK")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "BEL")
(PUNCT "=")
(LIT 7)
(NEWLINE)
(ID "BS")
(PUNCT "=")
(LIT 8)
(NEWLINE)
(ID "TAB")
(PUNCT "=")
(LIT 9)
(NEWLINE)
(ID "HT")
(PUNCT "=")
(LIT 9)
(NEWLINE)
(ID "LF")
(PUNCT "=")
(LIT 10)
(NEWLINE)
(ID "NL")
(PUNCT "=")
(LIT 10)
(NEWLINE)
(ID "VT")
(PUNCT "=")
(LIT 11)
(NEWLINE)
(ID "FF")
(PUNCT "=")
(LIT 12)
(NEWLINE)
(ID "CR")
(PUNCT "=")
(LIT 13)
(NEWLINE)
(ID "SO")
(PUNCT "=")
(LIT 14)
(NEWLINE)
(ID "SI")
(PUNCT "=")
(LIT 15)
(NEWLINE)
(ID "DLE")
(PUNCT "=")
(LIT 16)
(NEWLINE)
(ID "DC1")
(PUNCT "=")
(LIT 17)
(NEWLINE)
(ID "DC2")
(PUNCT "=")
(LIT 18)
(NEWLINE)
(ID "DC3")
(PUNCT "=")
(LIT 19)
(NEWLINE)
(ID "DC4")
(PUNCT "=")
(LIT 20)
(NEWLINE)
(ID "NAK")
(PUNCT "=")
(LIT 21)
(NEWLINE)
(ID "SYN")
(PUNCT "=")
(LIT 22)
(NEWLINE)
(ID "ETB")
(PUNCT "=")
(LIT 23)
(NEWLINE)
(ID "CAN")
(PUNCT "=")
(LIT 24)
(NEWLINE)
(ID "EM")
(PUNCT "=")
(LIT 25)
(NEWLINE)
(ID "SUB")
(PUNCT "=")
(LIT 26)
(NEWLINE)
(ID "ESC")
(PUNCT "=")
(LIT 27)
(NEWLINE)
(ID "FS")
(PUNCT "=")
(LIT 28)
(NEWLINE)
(ID "GS")
(PUNCT "=")
(LIT 29)
(NEWLINE)
(ID "RS")
(PUNCT "=")
(LIT 30)
(NEWLINE)
(ID "US")
(PUNCT "=")
(LIT 31)
(NEWLINE)
(ID "SP")
(PUNCT "=")
(LIT 32)
(NEWLINE)
(ID "DEL")
(PUNCT "=")
(LIT 127)
(NEWLINE)
(ID "controlnames")
(PUNCT "=")
(PUNCT "[")
(LIT "NUL")
(PUNCT ",")
(LIT "SOH")
(PUNCT ",")
(LIT "STX")
(PUNCT ",")
(LIT "ETX")
(PUNCT ",")
(LIT "EOT")
(PUNCT ",")
(LIT "ENQ")
(PUNCT ",")
(LIT "ACK")
(PUNCT ",")
(LIT "BEL")
(PUNCT ",")
(LIT "BS")
(PUNCT ",")
(LIT "HT")
(PUNCT ",")
(LIT "LF")
(PUNCT ",")
(LIT "VT")
(PUNCT ",")
(LIT "FF")
(PUNCT ",")
(LIT "CR")
(PUNCT ",")
(LIT "SO")
(PUNCT ",")
(LIT "SI")
(PUNCT ",")
(LIT "DLE")
(PUNCT ",")
(LIT "DC1")
(PUNCT ",")
(LIT "DC2")
(PUNCT ",")
(LIT "DC3")
(PUNCT ",")
(LIT "DC4")
(PUNCT ",")
(LIT "NAK")
(PUNCT ",")
(LIT "SYN")
(PUNCT ",")
(LIT "ETB")
(PUNCT ",")
(LIT "CAN")
(PUNCT ",")
(LIT "EM")
(PUNCT ",")
(LIT "SUB")
(PUNCT ",")
(LIT "ESC")
(PUNCT ",")
(LIT "FS")
(PUNCT ",")
(LIT "GS")
(PUNCT ",")
(LIT "RS")
(PUNCT ",")
(LIT "US")
(PUNCT ",")
(LIT "SP")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "==")
(ID "type")
(PUNCT "(")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "ord")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "c")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "isalnum")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "isalpha")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(KEYWORD or)
(ID "isdigit")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "isalpha")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "isupper")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(KEYWORD or)
(ID "islower")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "isascii")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 127)
(NEWLINE)
(KEYWORD def)
(ID "isblank")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(KEYWORD in)
(PUNCT "(")
(LIT 8)
(PUNCT ",")
(LIT 32)
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "iscntrl")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 31)
(NEWLINE)
(KEYWORD def)
(ID "isdigit")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 48)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 57)
(NEWLINE)
(KEYWORD def)
(ID "isgraph")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 33)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 126)
(NEWLINE)
(KEYWORD def)
(ID "islower")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 97)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 122)
(NEWLINE)
(KEYWORD def)
(ID "isprint")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 32)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 126)
(NEWLINE)
(KEYWORD def)
(ID "ispunct")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "!=")
(LIT 32)
(KEYWORD and)
(KEYWORD not)
(ID "isalnum")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "isspace")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(KEYWORD in)
(PUNCT "(")
(LIT 9)
(PUNCT ",")
(LIT 10)
(PUNCT ",")
(LIT 11)
(PUNCT ",")
(LIT 12)
(PUNCT ",")
(LIT 13)
(PUNCT ",")
(LIT 32)
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "isupper")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 65)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 90)
(NEWLINE)
(KEYWORD def)
(ID "isxdigit")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "isdigit")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 65)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 70)
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">=")
(LIT 97)
(KEYWORD and)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<=")
(LIT 102)
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "isctrl")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "<")
(LIT 32)
(NEWLINE)
(KEYWORD def)
(ID "ismeta")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">")
(LIT 127)
(NEWLINE)
(KEYWORD def)
(ID "ascii")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "==")
(ID "type")
(PUNCT "(")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "chr")
(PUNCT "(")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "&")
(LIT 127)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "&")
(LIT 127)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "ctrl")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "==")
(ID "type")
(PUNCT "(")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "chr")
(PUNCT "(")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "&")
(LIT 31)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "&")
(LIT 31)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "alt")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "==")
(ID "type")
(PUNCT "(")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "chr")
(PUNCT "(")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "|")
(LIT 128)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT "|")
(LIT 128)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "unctrl")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "bits")
(PUNCT "=")
(ID "_ctoi")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "bits")
(PUNCT "==")
(LIT 127)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(LIT "^?")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "isprint")
(PUNCT "(")
(ID "bits")
(PUNCT "&")
(LIT 127)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(ID "chr")
(PUNCT "(")
(ID "bits")
(PUNCT "&")
(LIT 127)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rep")
(PUNCT "=")
(LIT "^")
(PUNCT "+")
(ID "chr")
(PUNCT "(")
(PUNCT "(")
(PUNCT "(")
(ID "bits")
(PUNCT "&")
(LIT 127)
(PUNCT ")")
(PUNCT "|")
(LIT 32)
(PUNCT ")")
(PUNCT "+")
(LIT 32)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "bits")
(PUNCT "&")
(LIT 128)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "!")
(PUNCT "+")
(ID "rep")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "rep")
(NEWLINE)
(DEDENT)
(ENDMARKER)
