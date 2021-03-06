(LIT "Extension to execute code outside the Python shell window.\n\nThis adds the following commands:\n\n- Check module does a full syntax check of the current module.\n  It also runs the tabnanny to catch any inconsistent tabs.\n\n- Run module executes the module's code in the __main__ namespace.  The window\n  must have been saved previously. The module is added to sys.modules, and is\n  also added to the __main__ namespace.\n\nXXX GvR Redesign this interface (yet again) as follows:\n\n- Present a dialog box for ``Run Module''\n\n- Allow specify command line arguments in the dialog box\n\n")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD import)
(ID "string")
(NEWLINE)
(KEYWORD import)
(ID "tabnanny")
(NEWLINE)
(KEYWORD import)
(ID "tokenize")
(NEWLINE)
(KEYWORD import)
(ID "tkinter")
(PUNCT ".")
(ID "messagebox")
(KEYWORD as)
(ID "tkMessageBox")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(PUNCT ".")
(ID "EditorWindow")
(KEYWORD import)
(ID "EditorWindow")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(KEYWORD import)
(ID "PyShell")
(PUNCT ",")
(ID "IOBinding")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(PUNCT ".")
(ID "configHandler")
(KEYWORD import)
(ID "idleConf")
(NEWLINE)
(KEYWORD from)
(ID "idlelib")
(KEYWORD import)
(ID "macosxSupport")
(NEWLINE)
(ID "indent_message")
(PUNCT "=")
(LIT "Error: Inconsistent indentation detected!\n\n1) Your indentation is outright incorrect (easy to fix), OR\n\n2) Your indentation mixes tabs and spaces.\n\nTo fix case 2, change all tabs to spaces by using Edit->Select All followed by Format->Untabify Region and specify the number of columns used by each tab.\n")
(NEWLINE)
(KEYWORD class)
(ID "ScriptBinding")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "menudefs")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "run")
(PUNCT ",")
(PUNCT "[")
(KEYWORD None)
(PUNCT ",")
(PUNCT "(")
(LIT "Check Module")
(PUNCT ",")
(LIT "<<check-module>>")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "Run Module")
(PUNCT ",")
(LIT "<<run-module>>")
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
(ID "flist")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "flist")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "root")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "root")
(NEWLINE)
(KEYWORD if)
(ID "macosxSupport")
(PUNCT ".")
(ID "isCocoaTk")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text_frame")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(LIT "<<run-module-event-2>>")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_run_module_event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "check_module_event")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "getfilename")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "filename")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "checksyntax")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "tabnanny")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "tabnanny")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "tokenize")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(KEYWORD as)
(ID "f")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tabnanny")
(PUNCT ".")
(ID "process_tokens")
(PUNCT "(")
(ID "tokenize")
(PUNCT ".")
(ID "generate_tokens")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "readline")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "tokenize")
(PUNCT ".")
(ID "TokenError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msgtxt")
(PUNCT ",")
(PUNCT "(")
(ID "lineno")
(PUNCT ",")
(ID "start")
(PUNCT ")")
(PUNCT "=")
(ID "msg")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "gotoline")
(PUNCT "(")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "errorbox")
(PUNCT "(")
(LIT "Tabnanny Tokenizing Error")
(PUNCT ",")
(LIT "Token Error: %s")
(PUNCT "%")
(ID "msgtxt")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "tabnanny")
(PUNCT ".")
(ID "NannyNag")
(KEYWORD as)
(ID "nag")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "gotoline")
(PUNCT "(")
(ID "nag")
(PUNCT ".")
(ID "get_lineno")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "errorbox")
(PUNCT "(")
(LIT "Tab/space error")
(PUNCT ",")
(ID "indent_message")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "checksyntax")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "shell")
(PUNCT "=")
(ID "shell")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "flist")
(PUNCT ".")
(ID "open_shell")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "saved_stream")
(PUNCT "=")
(ID "shell")
(PUNCT ".")
(ID "get_warning_stream")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "shell")
(PUNCT ".")
(ID "set_warning_stream")
(PUNCT "(")
(ID "shell")
(PUNCT ".")
(ID "stderr")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "f")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(ID "f")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT #"\r")
(KEYWORD in)
(ID "source")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT #"\r\n")
(PUNCT ",")
(LIT #"\n")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT #"\r")
(PUNCT ",")
(LIT #"\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "source")
(KEYWORD and)
(ID "source")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "!=")
(ID "ord")
(PUNCT "(")
(LIT #"\n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(ID "source")
(PUNCT "+")
(LIT #"\n")
(NEWLINE)
(DEDENT)
(ID "editwin")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(NEWLINE)
(ID "text")
(PUNCT "=")
(ID "editwin")
(PUNCT ".")
(ID "text")
(NEWLINE)
(ID "text")
(PUNCT ".")
(ID "tag_remove")
(PUNCT "(")
(LIT "ERROR")
(PUNCT ",")
(LIT "1.0")
(PUNCT ",")
(LIT "end")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "compile")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "SyntaxError")
(PUNCT ",")
(ID "OverflowError")
(PUNCT ",")
(ID "ValueError")
(PUNCT ")")
(KEYWORD as)
(ID "value")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(LIT "msg")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(KEYWORD or)
(ID "value")
(KEYWORD or)
(LIT "<no detail available>")
(NEWLINE)
(ID "lineno")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(LIT "lineno")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(KEYWORD or)
(LIT 1)
(NEWLINE)
(ID "offset")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(LIT "offset")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(KEYWORD or)
(LIT 0)
(NEWLINE)
(KEYWORD if)
(ID "offset")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lineno")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "pos")
(PUNCT "=")
(LIT "0.0 + %d lines + %d chars")
(PUNCT "%")
(PUNCT "(")
(ID "lineno")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(ID "offset")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "editwin")
(PUNCT ".")
(ID "colorize_syntax_error")
(PUNCT "(")
(ID "text")
(PUNCT ",")
(ID "pos")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "errorbox")
(PUNCT "(")
(LIT "SyntaxError")
(PUNCT ",")
(LIT "%-20s")
(PUNCT "%")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "shell")
(PUNCT ".")
(ID "set_warning_stream")
(PUNCT "(")
(ID "saved_stream")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "run_module_event")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "macosxSupport")
(PUNCT ".")
(ID "isCocoaTk")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text_frame")
(PUNCT ".")
(ID "after")
(PUNCT "(")
(LIT 200)
(PUNCT ",")
(KEYWORD lambda)
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text_frame")
(PUNCT ".")
(ID "event_generate")
(PUNCT "(")
(LIT "<<run-module-event-2>>")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_run_module_event")
(PUNCT "(")
(ID "event")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_run_module_event")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "event")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Run the module after setting up the environment.\n\n        First check the syntax.  If OK, make sure the shell is active and\n        then transfer the arguments, set the run environment's working\n        directory to the directory of the module being executed and also\n        add that directory to its sys.path if not already included.\n        ")
(NEWLINE)
(ID "filename")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "getfilename")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "filename")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(ID "code")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "checksyntax")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "code")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "tabnanny")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(ID "interp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "shell")
(PUNCT ".")
(ID "interp")
(NEWLINE)
(KEYWORD if)
(ID "PyShell")
(PUNCT ".")
(ID "use_subprocess")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "interp")
(PUNCT ".")
(ID "restart_subprocess")
(PUNCT "(")
(ID "with_cwd")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "dirname")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(ID "interp")
(PUNCT ".")
(ID "runcommand")
(PUNCT "(")
(LIT "if 1:\n            __file__ = {filename!r}\n            import sys as _sys\n            from os.path import basename as _basename\n            if (not _sys.argv or\n                _basename(_sys.argv[0]) != _basename(__file__)):\n                _sys.argv = [__file__]\n            import os as _os\n            _os.chdir({dirname!r})\n            del _sys, _basename, _os\n            \n")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "filename")
(PUNCT "=")
(ID "filename")
(PUNCT ",")
(ID "dirname")
(PUNCT "=")
(ID "dirname")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "interp")
(PUNCT ".")
(ID "prepend_syspath")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(ID "interp")
(PUNCT ".")
(ID "runcode")
(PUNCT "(")
(ID "code")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "break")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getfilename")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get source filename.  If not saved, offer to save (or create) file\n\n        The debugger requires a source file.  Make sure there is one, and that\n        the current version of the source buffer has been saved.  If the user\n        declines to save or cancels the Save As dialog, return None.\n\n        If the user has configured IDLE for Autosave, the file will be\n        silently saved if it already exists and is dirty.\n\n        ")
(NEWLINE)
(ID "filename")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "io")
(PUNCT ".")
(ID "filename")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "get_saved")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "autosave")
(PUNCT "=")
(ID "idleConf")
(PUNCT ".")
(ID "GetOption")
(PUNCT "(")
(LIT "main")
(PUNCT ",")
(LIT "General")
(PUNCT ",")
(LIT "autosave")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(LIT "bool")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "autosave")
(KEYWORD and)
(ID "filename")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "io")
(PUNCT ".")
(ID "save")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "confirm")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ask_save_dialog")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "focus_set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "confirm")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "io")
(PUNCT ".")
(ID "save")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(ID "filename")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "io")
(PUNCT ".")
(ID "filename")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "filename")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "ask_save_dialog")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "Source Must Be Saved\n")
(PUNCT "+")
(LIT 5)
(PUNCT "*")
(LIT " ")
(PUNCT "+")
(LIT "OK to Save?")
(NEWLINE)
(ID "confirm")
(PUNCT "=")
(ID "tkMessageBox")
(PUNCT ".")
(ID "askokcancel")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(LIT "Save Before Run or Check")
(PUNCT ",")
(ID "message")
(PUNCT "=")
(ID "msg")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(ID "tkMessageBox")
(PUNCT ".")
(ID "OK")
(PUNCT ",")
(ID "master")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "confirm")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "errorbox")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tkMessageBox")
(PUNCT ".")
(ID "showerror")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "master")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "editwin")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "focus_set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
