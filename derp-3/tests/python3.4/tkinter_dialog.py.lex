(KEYWORD from)
(ID "tkinter")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(KEYWORD from)
(ID "tkinter")
(KEYWORD import)
(ID "_cnfmerge")
(NEWLINE)
(KEYWORD if)
(ID "TkVersion")
(PUNCT "<=")
(LIT 3.6)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "DIALOG_ICON")
(PUNCT "=")
(LIT "warning")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "DIALOG_ICON")
(PUNCT "=")
(LIT "questhead")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Dialog")
(PUNCT "(")
(ID "Widget")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "master")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "cnf")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cnf")
(PUNCT "=")
(ID "_cnfmerge")
(PUNCT "(")
(PUNCT "(")
(ID "cnf")
(PUNCT ",")
(ID "kw")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "widgetName")
(PUNCT "=")
(LIT "__dialog__")
(NEWLINE)
(ID "Widget")
(PUNCT ".")
(ID "_setup")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "master")
(PUNCT ",")
(ID "cnf")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "num")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "getint")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "tk_dialog")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_w")
(PUNCT ",")
(ID "cnf")
(PUNCT "[")
(LIT "title")
(PUNCT "]")
(PUNCT ",")
(ID "cnf")
(PUNCT "[")
(LIT "text")
(PUNCT "]")
(PUNCT ",")
(ID "cnf")
(PUNCT "[")
(LIT "bitmap")
(PUNCT "]")
(PUNCT ",")
(ID "cnf")
(PUNCT "[")
(LIT "default")
(PUNCT "]")
(PUNCT ",")
(PUNCT "*")
(ID "cnf")
(PUNCT "[")
(LIT "strings")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(ID "Widget")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(KEYWORD except)
(ID "TclError")
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "destroy")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_test")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "Dialog")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(PUNCT "{")
(LIT "title")
(PUNCT ":")
(LIT "File Modified")
(PUNCT ",")
(LIT "text")
(PUNCT ":")
(LIT "File \"Python.h\" has been modified")
(LIT " since the last time it was saved.")
(LIT " Do you want to save it before")
(LIT " exiting the application.")
(PUNCT ",")
(LIT "bitmap")
(PUNCT ":")
(ID "DIALOG_ICON")
(PUNCT ",")
(LIT "default")
(PUNCT ":")
(LIT 0)
(PUNCT ",")
(LIT "strings")
(PUNCT ":")
(PUNCT "(")
(LIT "Save File")
(PUNCT ",")
(LIT "Discard Changes")
(PUNCT ",")
(LIT "Return to Editor")
(PUNCT ")")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "d")
(PUNCT ".")
(ID "num")
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
(ID "t")
(PUNCT "=")
(ID "Button")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(PUNCT "{")
(LIT "text")
(PUNCT ":")
(LIT "Test")
(PUNCT ",")
(LIT "command")
(PUNCT ":")
(ID "_test")
(PUNCT ",")
(ID "Pack")
(PUNCT ":")
(PUNCT "{")
(PUNCT "}")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "q")
(PUNCT "=")
(ID "Button")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(PUNCT "{")
(LIT "text")
(PUNCT ":")
(LIT "Quit")
(PUNCT ",")
(LIT "command")
(PUNCT ":")
(ID "t")
(PUNCT ".")
(ID "quit")
(PUNCT ",")
(ID "Pack")
(PUNCT ":")
(PUNCT "{")
(PUNCT "}")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "t")
(PUNCT ".")
(ID "mainloop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
