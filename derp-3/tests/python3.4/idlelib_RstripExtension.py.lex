(LIT "Provides \"Strip trailing whitespace\" under the \"Format\" menu.")
(NEWLINE)
(KEYWORD class)
(ID "RstripExtension")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "menudefs")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "format")
(PUNCT ",")
(PUNCT "[")
(KEYWORD None)
(PUNCT ",")
(PUNCT "(")
(LIT "Strip trailing whitespace")
(PUNCT ",")
(LIT "<<do-rstrip>>")
(PUNCT ")")
(PUNCT ",")
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "editwin")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT "=")
(ID "editwin")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(LIT "<<do-rstrip>>")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "do_rstrip")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "do_rstrip")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "text")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(NEWLINE)
(ID "undo")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "undo")
(NEWLINE)
(ID "undo")
(PUNCT ".")
(ID "undo_block_start")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "end_line")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "float")
(PUNCT "(")
(ID "text")
(PUNCT ".")
(ID "index")
(PUNCT "(")
(LIT "end")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "cur")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(ID "end_line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "txt")
(PUNCT "=")
(ID "text")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "%i.0")
(PUNCT "%")
(ID "cur")
(PUNCT ",")
(LIT "%i.end")
(PUNCT "%")
(ID "cur")
(PUNCT ")")
(NEWLINE)
(ID "raw")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "txt")
(PUNCT ")")
(NEWLINE)
(ID "cut")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "txt")
(PUNCT ".")
(ID "rstrip")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "cut")
(PUNCT "<")
(ID "raw")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "text")
(PUNCT ".")
(ID "delete")
(PUNCT "(")
(LIT "%i.%i")
(PUNCT "%")
(PUNCT "(")
(ID "cur")
(PUNCT ",")
(ID "cut")
(PUNCT ")")
(PUNCT ",")
(LIT "%i.end")
(PUNCT "%")
(ID "cur")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "undo")
(PUNCT ".")
(ID "undo_block_stop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "unittest")
(NEWLINE)
(ID "unittest")
(PUNCT ".")
(ID "main")
(PUNCT "(")
(LIT "idlelib.idle_test.test_rstrip")
(PUNCT ",")
(ID "verbosity")
(PUNCT "=")
(LIT 2)
(PUNCT ",")
(ID "exit")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
