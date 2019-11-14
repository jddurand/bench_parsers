(LIT "CodeContext - Extension to display the block context above the edit window\n\nOnce code has scrolled off the top of a window, it can be difficult to\ndetermine which block you are in.  This extension implements a pane at the top\nof each IDLE edit window which provides block structure hints.  These hints are\nthe lines which contain the block opening keywords, e.g. 'if', for the\nenclosing block.  The number of hint lines is determined by the numlines\nvariable in the CodeContext section of config-extensions.def. Lines which do\nnot open blocks are not shown in the context hints pane.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "tkinter")
(NEWLINE)
(KEYWORD from)
(ID "tkinter")
(PUNCT ".")
(ID "constants")
(KEYWORD import)
(ID "TOP")
(PUNCT ",")
(ID "LEFT")
(PUNCT ",")
(ID "X")
(PUNCT ",")
(ID "W")
(PUNCT ",")
(ID "SUNKEN")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD from)
(ID "sys")
(KEYWORD import)
(ID "maxsize")
(KEYWORD as)
(ID "INFINITY")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(PUNCT ".")
(ID "configHandler")
(KEYWORD import)
(ID "idleConf")
(NEWLINE)
(ID "BLOCKOPENERS")
(PUNCT "=")
(PUNCT "{")
(LIT "class")
(PUNCT ",")
(LIT "def")
(PUNCT ",")
(LIT "elif")
(PUNCT ",")
(LIT "else")
(PUNCT ",")
(LIT "except")
(PUNCT ",")
(LIT "finally")
(PUNCT ",")
(LIT "for")
(PUNCT ",")
(LIT "if")
(PUNCT ",")
(LIT "try")
(PUNCT ",")
(LIT "while")
(PUNCT ",")
(LIT "with")
(PUNCT "}")
(NEWLINE)
(ID "UPDATEINTERVAL")
(PUNCT "=")
(LIT 100)
(NEWLINE)
(ID "FONTUPDATEINTERVAL")
(PUNCT "=")
(LIT 1000)
(NEWLINE)
(ID "getspacesfirstword")
(PUNCT "=")
(KEYWORD lambda)
(ID "s")
(PUNCT ",")
(ID "c")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "^(\\s*)(\\w*)")
(PUNCT ")")
(PUNCT ":")
(ID "c")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT ".")
(ID "groups")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "CodeContext")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "menudefs")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "options")
(PUNCT ",")
(PUNCT "[")
(PUNCT "(")
(LIT "!Code Conte_xt")
(PUNCT ",")
(LIT "<<toggle-code-context>>")
(PUNCT ")")
(PUNCT "]")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "context_depth")
(PUNCT "=")
(ID "idleConf")
(PUNCT ".")
(ID "GetOption")
(PUNCT "(")
(LIT "extensions")
(PUNCT ",")
(LIT "CodeContext")
(PUNCT ",")
(LIT "numlines")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(LIT "int")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(LIT 3)
(PUNCT ")")
(NEWLINE)
(ID "bgcolor")
(PUNCT "=")
(ID "idleConf")
(PUNCT ".")
(ID "GetOption")
(PUNCT "(")
(LIT "extensions")
(PUNCT ",")
(LIT "CodeContext")
(PUNCT ",")
(LIT "bgcolor")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(LIT "str")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(LIT "LightGray")
(PUNCT ")")
(NEWLINE)
(ID "fgcolor")
(PUNCT "=")
(ID "idleConf")
(PUNCT ".")
(ID "GetOption")
(PUNCT "(")
(LIT "extensions")
(PUNCT ",")
(LIT "CodeContext")
(PUNCT ",")
(LIT "fgcolor")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(LIT "str")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(LIT "Black")
(PUNCT ")")
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
(ID "text")
(PUNCT "=")
(ID "editwin")
(PUNCT ".")
(ID "text")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "textfont")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT "[")
(LIT "font")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(LIT "")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "visible")
(PUNCT "=")
(ID "idleConf")
(PUNCT ".")
(ID "GetOption")
(PUNCT "(")
(LIT "extensions")
(PUNCT ",")
(LIT "CodeContext")
(PUNCT ",")
(LIT "visible")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(LIT "bool")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "visible")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "toggle_code_context_event")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "setvar")
(PUNCT "(")
(LIT "<<toggle-code-context>>")
(PUNCT ",")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "after")
(PUNCT "(")
(ID "UPDATEINTERVAL")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "timer_event")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "after")
(PUNCT "(")
(ID "FONTUPDATEINTERVAL")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "font_timer_event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "toggle_code_context_event")
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
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "widgets")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text_frame")
(NEWLINE)
(ID "padx")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD for)
(ID "widget")
(KEYWORD in)
(ID "widgets")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "padx")
(PUNCT "+=")
(ID "int")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "widget")
(PUNCT ".")
(ID "pack_info")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT "padx")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "padx")
(PUNCT "+=")
(ID "int")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "widget")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "padx")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "border")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD for)
(ID "widget")
(KEYWORD in)
(ID "widgets")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "border")
(PUNCT "+=")
(ID "int")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "widget")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "border")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Label")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "top")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "\n")
(PUNCT "*")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "context_depth")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ",")
(ID "anchor")
(PUNCT "=")
(ID "W")
(PUNCT ",")
(ID "justify")
(PUNCT "=")
(ID "LEFT")
(PUNCT ",")
(ID "font")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "textfont")
(PUNCT ",")
(ID "bg")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bgcolor")
(PUNCT ",")
(ID "fg")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "fgcolor")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "padx")
(PUNCT "=")
(ID "padx")
(PUNCT ",")
(ID "border")
(PUNCT "=")
(ID "border")
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "SUNKEN")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "TOP")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "before")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text_frame")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "idleConf")
(PUNCT ".")
(ID "SetOption")
(PUNCT "(")
(LIT "extensions")
(PUNCT ",")
(LIT "CodeContext")
(PUNCT ",")
(LIT "visible")
(PUNCT ",")
(ID "str")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "label")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "idleConf")
(PUNCT ".")
(ID "SaveUserCfgFiles")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_line_info")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "linenum")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get the line indent value, text, and any block start keyword\n\n        If the line does not start a block, the keyword value is False.\n        The indentation of empty lines (or comment lines) is INFINITY.\n\n        ")
(NEWLINE)
(ID "text")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "%d.0")
(PUNCT "%")
(ID "linenum")
(PUNCT ",")
(LIT "%d.end")
(PUNCT "%")
(ID "linenum")
(PUNCT ")")
(NEWLINE)
(ID "spaces")
(PUNCT ",")
(ID "firstword")
(PUNCT "=")
(ID "getspacesfirstword")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(NEWLINE)
(ID "opener")
(PUNCT "=")
(ID "firstword")
(KEYWORD in)
(ID "BLOCKOPENERS")
(KEYWORD and)
(ID "firstword")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(PUNCT "==")
(ID "len")
(PUNCT "(")
(ID "spaces")
(PUNCT ")")
(KEYWORD or)
(ID "text")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "spaces")
(PUNCT ")")
(PUNCT "]")
(PUNCT "==")
(LIT "#")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "indent")
(PUNCT "=")
(ID "INFINITY")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "indent")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "spaces")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "indent")
(PUNCT ",")
(ID "text")
(PUNCT ",")
(ID "opener")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_context")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "new_topvisible")
(PUNCT ",")
(ID "stopline")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "stopindent")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get context lines, starting at new_topvisible and working backwards.\n\n        Stop when stopline or stopindent is reached. Return a tuple of context\n        data and the indent level at the top of the region inspected.\n\n        ")
(NEWLINE)
(KEYWORD assert)
(ID "stopline")
(PUNCT ">")
(LIT 0)
(NEWLINE)
(ID "lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "lastindent")
(PUNCT "=")
(ID "INFINITY")
(NEWLINE)
(KEYWORD for)
(ID "linenum")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(ID "new_topvisible")
(PUNCT ",")
(ID "stopline")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "indent")
(PUNCT ",")
(ID "text")
(PUNCT ",")
(ID "opener")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_line_info")
(PUNCT "(")
(ID "linenum")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "indent")
(PUNCT "<")
(ID "lastindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lastindent")
(PUNCT "=")
(ID "indent")
(NEWLINE)
(KEYWORD if)
(ID "opener")
(KEYWORD in)
(PUNCT "(")
(LIT "else")
(PUNCT ",")
(LIT "elif")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lastindent")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "opener")
(KEYWORD and)
(ID "linenum")
(PUNCT "<")
(ID "new_topvisible")
(KEYWORD and)
(ID "indent")
(PUNCT ">=")
(ID "stopindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "linenum")
(PUNCT ",")
(ID "indent")
(PUNCT ",")
(ID "text")
(PUNCT ",")
(ID "opener")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "lastindent")
(PUNCT "<=")
(ID "stopindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(ID "lines")
(PUNCT ".")
(ID "reverse")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "lines")
(PUNCT ",")
(ID "lastindent")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "update_code_context")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Update context information and lines visible in the context pane.\n\n        ")
(NEWLINE)
(ID "new_topvisible")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "index")
(PUNCT "(")
(LIT "@0,0")
(PUNCT ")")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT "==")
(ID "new_topvisible")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT "<")
(ID "new_topvisible")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT ",")
(ID "lastindent")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_context")
(PUNCT "(")
(ID "new_topvisible")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ">=")
(ID "lastindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT ">")
(ID "new_topvisible")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stopindent")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ">=")
(ID "new_topvisible")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stopindent")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT ",")
(ID "lastindent")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_context")
(PUNCT "(")
(ID "new_topvisible")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "stopindent")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "topvisible")
(PUNCT "=")
(ID "new_topvisible")
(NEWLINE)
(ID "context_strings")
(PUNCT "=")
(PUNCT "[")
(LIT "")
(PUNCT "]")
(PUNCT "*")
(ID "max")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "context_depth")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "context_strings")
(PUNCT "+=")
(PUNCT "[")
(ID "x")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "info")
(PUNCT "[")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "context_depth")
(PUNCT ":")
(PUNCT "]")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "[")
(LIT "text")
(PUNCT "]")
(PUNCT "=")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "context_strings")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "timer_event")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "update_code_context")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "after")
(PUNCT "(")
(ID "UPDATEINTERVAL")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "timer_event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "font_timer_event")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "newtextfont")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT "[")
(LIT "font")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "label")
(KEYWORD and)
(ID "newtextfont")
(PUNCT "!=")
(ID "self")
(PUNCT ".")
(ID "textfont")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "textfont")
(PUNCT "=")
(ID "newtextfont")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "label")
(PUNCT "[")
(LIT "font")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "textfont")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "after")
(PUNCT "(")
(ID "FONTUPDATEINTERVAL")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "font_timer_event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
