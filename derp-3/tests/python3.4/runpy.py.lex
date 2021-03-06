(LIT "runpy.py - locating and running Python code using the module namespace\n\nProvides support for locating and running Python scripts using the Python\nmodule namespace instead of the native filesystem.\n\nThis allows Python code to play nicely with non-filesystem based PEP 302\nimporters when locating support scripts as well as when importing modules.\n")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "importlib")
(PUNCT ".")
(ID "machinery")
(NEWLINE)
(KEYWORD import)
(ID "importlib")
(PUNCT ".")
(ID "util")
(NEWLINE)
(KEYWORD import)
(ID "types")
(NEWLINE)
(KEYWORD from)
(ID "pkgutil")
(KEYWORD import)
(ID "read_code")
(PUNCT ",")
(ID "get_importer")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "run_module")
(PUNCT ",")
(LIT "run_path")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "_TempModule")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Temporarily replace a module in sys.modules with an empty namespace")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "mod_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "mod_name")
(PUNCT "=")
(ID "mod_name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "module")
(PUNCT "=")
(ID "types")
(PUNCT ".")
(ID "ModuleType")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_saved_module")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__enter__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_name")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "mod_name")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_saved_module")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "mod_name")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "mod_name")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "module")
(NEWLINE)
(KEYWORD return)
(ID "self")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_saved_module")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "mod_name")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_saved_module")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "mod_name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_saved_module")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_ModifiedArgv0")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "value")
(PUNCT "=")
(ID "value")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_saved_value")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_sentinel")
(PUNCT "=")
(ID "object")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__enter__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_saved_value")
(KEYWORD is)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_sentinel")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "Already preserving saved value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_saved_value")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "value")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_sentinel")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_saved_value")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_run_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "run_globals")
(PUNCT ",")
(ID "init_globals")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "mod_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "mod_spec")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "pkg_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "script_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper to run code in nominated namespace")
(NEWLINE)
(KEYWORD if)
(ID "init_globals")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "run_globals")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(ID "init_globals")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mod_spec")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "loader")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "fname")
(PUNCT "=")
(ID "script_name")
(NEWLINE)
(ID "cached")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "loader")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ".")
(ID "loader")
(NEWLINE)
(ID "fname")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ".")
(ID "origin")
(NEWLINE)
(ID "cached")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ".")
(ID "cached")
(NEWLINE)
(KEYWORD if)
(ID "pkg_name")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pkg_name")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ".")
(ID "parent")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "run_globals")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(ID "__name__")
(PUNCT "=")
(ID "mod_name")
(PUNCT ",")
(ID "__file__")
(PUNCT "=")
(ID "fname")
(PUNCT ",")
(ID "__cached__")
(PUNCT "=")
(ID "cached")
(PUNCT ",")
(ID "__doc__")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "__loader__")
(PUNCT "=")
(ID "loader")
(PUNCT ",")
(ID "__package__")
(PUNCT "=")
(ID "pkg_name")
(PUNCT ",")
(ID "__spec__")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ")")
(NEWLINE)
(ID "exec")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "run_globals")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "run_globals")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_run_module_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "init_globals")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "mod_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "mod_spec")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "pkg_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "script_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper to run code in new namespace with sys modified")
(NEWLINE)
(ID "fname")
(PUNCT "=")
(ID "script_name")
(KEYWORD if)
(ID "mod_spec")
(KEYWORD is)
(KEYWORD None)
(KEYWORD else)
(ID "mod_spec")
(PUNCT ".")
(ID "origin")
(NEWLINE)
(KEYWORD with)
(ID "_TempModule")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(KEYWORD as)
(ID "temp_module")
(PUNCT ",")
(ID "_ModifiedArgv0")
(PUNCT "(")
(ID "fname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_globals")
(PUNCT "=")
(ID "temp_module")
(PUNCT ".")
(ID "module")
(PUNCT ".")
(ID "__dict__")
(NEWLINE)
(ID "_run_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "mod_globals")
(PUNCT ",")
(ID "init_globals")
(PUNCT ",")
(ID "mod_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "pkg_name")
(PUNCT ",")
(ID "script_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "mod_globals")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_module_details")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "spec")
(PUNCT "=")
(ID "importlib")
(PUNCT ".")
(ID "util")
(PUNCT ".")
(ID "find_spec")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "ImportError")
(PUNCT ",")
(ID "AttributeError")
(PUNCT ",")
(ID "TypeError")
(PUNCT ",")
(ID "ValueError")
(PUNCT ")")
(KEYWORD as)
(ID "ex")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "Error while finding spec for {!r} ({}: {})")
(NEWLINE)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "mod_name")
(PUNCT ",")
(ID "type")
(PUNCT "(")
(ID "ex")
(PUNCT ")")
(PUNCT ",")
(ID "ex")
(PUNCT ")")
(PUNCT ")")
(KEYWORD from)
(ID "ex")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "spec")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "No module named %s")
(PUNCT "%")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "spec")
(PUNCT ".")
(ID "submodule_search_locations")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "mod_name")
(PUNCT "==")
(LIT "__main__")
(KEYWORD or)
(ID "mod_name")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT ".__main__")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "Cannot use package as __main__ module")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pkg_main_name")
(PUNCT "=")
(ID "mod_name")
(PUNCT "+")
(LIT ".__main__")
(NEWLINE)
(KEYWORD return)
(ID "_get_module_details")
(PUNCT "(")
(ID "pkg_main_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(KEYWORD as)
(ID "e")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(PUNCT "(")
(LIT "%s; %r is a package and cannot ")
(PUNCT "+")
(LIT "be directly executed")
(PUNCT ")")
(PUNCT "%")
(PUNCT "(")
(ID "e")
(PUNCT ",")
(ID "mod_name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "loader")
(PUNCT "=")
(ID "spec")
(PUNCT ".")
(ID "loader")
(NEWLINE)
(KEYWORD if)
(ID "loader")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "%r is a namespace package and cannot be executed")
(PUNCT "%")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "code")
(PUNCT "=")
(ID "loader")
(PUNCT ".")
(ID "get_code")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "code")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "No code object available for %s")
(PUNCT "%")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "mod_name")
(PUNCT ",")
(ID "spec")
(PUNCT ",")
(ID "code")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_run_module_as_main")
(PUNCT "(")
(ID "mod_name")
(PUNCT ",")
(ID "alter_argv")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Runs the designated module in the __main__ namespace\n\n       Note that the executed module will have full access to the\n       __main__ namespace. If this is not desirable, the run_module()\n       function should be used to run the module code in a fresh namespace.\n\n       At the very least, these variables in __main__ will be overwritten:\n           __name__\n           __file__\n           __cached__\n           __loader__\n           __package__\n    ")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "alter_argv")
(KEYWORD or)
(ID "mod_name")
(PUNCT "!=")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "code")
(PUNCT "=")
(ID "_get_module_details")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "code")
(PUNCT "=")
(ID "_get_main_module_details")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(KEYWORD as)
(ID "exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "alter_argv")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "info")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "exc")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "info")
(PUNCT "=")
(LIT "can't find '__main__' module in %r")
(PUNCT "%")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "msg")
(PUNCT "=")
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "executable")
(PUNCT ",")
(ID "info")
(PUNCT ")")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "exit")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "main_globals")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(LIT "__main__")
(PUNCT "]")
(PUNCT ".")
(ID "__dict__")
(NEWLINE)
(KEYWORD if)
(ID "alter_argv")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "mod_spec")
(PUNCT ".")
(ID "origin")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "_run_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "main_globals")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT "__main__")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "run_module")
(PUNCT "(")
(ID "mod_name")
(PUNCT ",")
(ID "init_globals")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "run_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "alter_sys")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Execute a module's code without importing it\n\n       Returns the resulting top level namespace dictionary\n    ")
(NEWLINE)
(ID "mod_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "code")
(PUNCT "=")
(ID "_get_module_details")
(PUNCT "(")
(ID "mod_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "run_name")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "run_name")
(PUNCT "=")
(ID "mod_name")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "alter_sys")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_run_module_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "init_globals")
(PUNCT ",")
(ID "run_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_run_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(ID "init_globals")
(PUNCT ",")
(ID "run_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_get_main_module_details")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "main_name")
(PUNCT "=")
(LIT "__main__")
(NEWLINE)
(ID "saved_main")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "main_name")
(PUNCT "]")
(NEWLINE)
(KEYWORD del)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "main_name")
(PUNCT "]")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_get_module_details")
(PUNCT "(")
(ID "main_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(KEYWORD as)
(ID "exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "main_name")
(KEYWORD in)
(ID "str")
(PUNCT "(")
(ID "exc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "can't find %r module in %r")
(PUNCT "%")
(PUNCT "(")
(ID "main_name")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "path")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(KEYWORD from)
(ID "exc")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "main_name")
(PUNCT "]")
(PUNCT "=")
(ID "saved_main")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_get_code_from_file")
(PUNCT "(")
(ID "run_name")
(PUNCT ",")
(ID "fname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "fname")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "f")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code")
(PUNCT "=")
(ID "read_code")
(PUNCT "(")
(ID "f")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "code")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "fname")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "f")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code")
(PUNCT "=")
(ID "compile")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "fname")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "code")
(PUNCT ",")
(ID "fname")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "run_path")
(PUNCT "(")
(ID "path_name")
(PUNCT ",")
(ID "init_globals")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "run_name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Execute code located at the specified filesystem location\n\n       Returns the resulting top level namespace dictionary\n\n       The file path may refer directly to a Python script (i.e.\n       one that could be directly executed with execfile) or else\n       it may refer to a zipfile or directory containing a top\n       level __main__.py script.\n    ")
(NEWLINE)
(KEYWORD if)
(ID "run_name")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "run_name")
(PUNCT "=")
(LIT "<run_path>")
(NEWLINE)
(DEDENT)
(ID "pkg_name")
(PUNCT "=")
(ID "run_name")
(PUNCT ".")
(ID "rpartition")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "importer")
(PUNCT "=")
(ID "get_importer")
(PUNCT "(")
(ID "path_name")
(PUNCT ")")
(NEWLINE)
(ID "is_NullImporter")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "importer")
(PUNCT ")")
(PUNCT ".")
(ID "__module__")
(PUNCT "==")
(LIT "imp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "importer")
(PUNCT ")")
(PUNCT ".")
(ID "__name__")
(PUNCT "==")
(LIT "NullImporter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "is_NullImporter")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "importer")
(PUNCT ",")
(ID "type")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(PUNCT ")")
(KEYWORD or)
(ID "is_NullImporter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code")
(PUNCT ",")
(ID "fname")
(PUNCT "=")
(ID "_get_code_from_file")
(PUNCT "(")
(ID "run_name")
(PUNCT ",")
(ID "path_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "_run_module_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "init_globals")
(PUNCT ",")
(ID "run_name")
(PUNCT ",")
(ID "pkg_name")
(PUNCT "=")
(ID "pkg_name")
(PUNCT ",")
(ID "script_name")
(PUNCT "=")
(ID "fname")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "insert")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "path_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "code")
(PUNCT "=")
(ID "_get_main_module_details")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "_TempModule")
(PUNCT "(")
(ID "run_name")
(PUNCT ")")
(KEYWORD as)
(ID "temp_module")
(PUNCT ",")
(ID "_ModifiedArgv0")
(PUNCT "(")
(ID "path_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod_globals")
(PUNCT "=")
(ID "temp_module")
(PUNCT ".")
(ID "module")
(PUNCT ".")
(ID "__dict__")
(NEWLINE)
(KEYWORD return)
(ID "_run_code")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "mod_globals")
(PUNCT ",")
(ID "init_globals")
(PUNCT ",")
(ID "run_name")
(PUNCT ",")
(ID "mod_spec")
(PUNCT ",")
(ID "pkg_name")
(PUNCT ")")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "path_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ValueError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT ")")
(PUNCT "<")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "No module specified for execution")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "stderr")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "_run_module_as_main")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
