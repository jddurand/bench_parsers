(LIT "Tool for measuring execution time of small code snippets.\n\nThis module avoids a number of common traps for measuring execution\ntimes.  See also Tim Peters' introduction to the Algorithms chapter in\nthe Python Cookbook, published by O'Reilly.\n\nLibrary usage: see the Timer class.\n\nCommand line usage:\n    python timeit.py [-n N] [-r N] [-s S] [-t] [-c] [-p] [-h] [--] [statement]\n\nOptions:\n  -n/--number N: how many times to execute 'statement' (default: see below)\n  -r/--repeat N: how many times to repeat the timer (default 3)\n  -s/--setup S: statement to be executed once initially (default 'pass')\n  -p/--process: use time.process_time() (default is time.perf_counter())\n  -t/--time: use time.time() (deprecated)\n  -c/--clock: use time.clock() (deprecated)\n  -v/--verbose: print raw timing results; repeat for more digits precision\n  -h/--help: print this usage message and exit\n  --: separate options from statement, use when statement starts with -\n  statement: statement to be timed (default 'pass')\n\nA multi-line statement may be given by specifying each line as a\nseparate argument; indented lines are possible by enclosing an\nargument in quotes and using leading spaces.  Multiple -s options are\ntreated similarly.\n\nIf -n is not given, a suitable number of loops is calculated by trying\nsuccessive powers of 10 until the total time is at least 0.2 seconds.\n\nNote: there is a certain baseline overhead associated with executing a\npass statement.  It differs between versions.  The code here doesn't try\nto hide it, but you should be aware of it.  The baseline overhead can be\nmeasured by invoking the program without arguments.\n\nClasses:\n\n    Timer\n\nFunctions:\n\n    timeit(string, string) -> float\n    repeat(string, string) -> list\n    default_timer() -> float\n\n")
(NEWLINE)
(KEYWORD import)
(ID "gc")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD import)
(ID "itertools")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "Timer")
(PUNCT ",")
(LIT "timeit")
(PUNCT ",")
(LIT "repeat")
(PUNCT ",")
(LIT "default_timer")
(PUNCT "]")
(NEWLINE)
(ID "dummy_src_name")
(PUNCT "=")
(LIT "<timeit-src>")
(NEWLINE)
(ID "default_number")
(PUNCT "=")
(LIT 1000000)
(NEWLINE)
(ID "default_repeat")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "default_timer")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "perf_counter")
(NEWLINE)
(ID "template")
(PUNCT "=")
(LIT "\ndef inner(_it, _timer):\n    {setup}\n    _t0 = _timer()\n    for _i in _it:\n        {stmt}\n    _t1 = _timer()\n    return _t1 - _t0\n")
(NEWLINE)
(KEYWORD def)
(ID "reindent")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "indent")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper to reindent a multi-line statement.")
(NEWLINE)
(KEYWORD return)
(ID "src")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(LIT "\n")
(PUNCT "+")
(LIT " ")
(PUNCT "*")
(ID "indent")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_template_func")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "func")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Create a timer function. Used if the \"statement\" is a callable.")
(NEWLINE)
(KEYWORD def)
(ID "inner")
(PUNCT "(")
(ID "_it")
(PUNCT ",")
(ID "_timer")
(PUNCT ",")
(ID "_func")
(PUNCT "=")
(ID "func")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "setup")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "_t0")
(PUNCT "=")
(ID "_timer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "_i")
(KEYWORD in)
(ID "_it")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_func")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_t1")
(PUNCT "=")
(ID "_timer")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "_t1")
(PUNCT "-")
(ID "_t0")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "inner")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Timer")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Class for timing execution speed of small code snippets.\n\n    The constructor takes a statement to be timed, an additional\n    statement used for setup, and a timer function.  Both statements\n    default to 'pass'; the timer function is platform-dependent (see\n    module doc string).\n\n    To measure the execution time of the first statement, use the\n    timeit() method.  The repeat() method is a convenience to call\n    timeit() multiple times and return a list of results.\n\n    The statements may contain newlines, as long as they don't contain\n    multi-line string literals.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stmt")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "setup")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "timer")
(PUNCT "=")
(ID "default_timer")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Constructor.  See class doc string.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "timer")
(PUNCT "=")
(ID "timer")
(NEWLINE)
(ID "ns")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "compile")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "dummy_src_name")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(ID "compile")
(PUNCT "(")
(ID "setup")
(PUNCT "+")
(LIT "\n")
(PUNCT "+")
(ID "stmt")
(PUNCT ",")
(ID "dummy_src_name")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "compile")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(ID "dummy_src_name")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "stmt")
(PUNCT "=")
(ID "reindent")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(LIT 8)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "setup")
(PUNCT "=")
(ID "reindent")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(ID "src")
(PUNCT "=")
(ID "template")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "stmt")
(PUNCT "=")
(ID "stmt")
(PUNCT ",")
(ID "setup")
(PUNCT "=")
(ID "setup")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "callable")
(PUNCT "(")
(ID "setup")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "src")
(PUNCT "=")
(ID "template")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "stmt")
(PUNCT "=")
(ID "stmt")
(PUNCT ",")
(ID "setup")
(PUNCT "=")
(LIT "_setup()")
(PUNCT ")")
(NEWLINE)
(ID "ns")
(PUNCT "[")
(LIT "_setup")
(PUNCT "]")
(PUNCT "=")
(ID "setup")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "setup is neither a string nor callable")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "src")
(PUNCT "=")
(ID "src")
(NEWLINE)
(ID "code")
(PUNCT "=")
(ID "compile")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dummy_src_name")
(PUNCT ",")
(LIT "exec")
(PUNCT ")")
(NEWLINE)
(ID "exec")
(PUNCT "(")
(ID "code")
(PUNCT ",")
(ID "globals")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "ns")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "inner")
(PUNCT "=")
(ID "ns")
(PUNCT "[")
(LIT "inner")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "callable")
(PUNCT "(")
(ID "stmt")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "src")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_setup")
(PUNCT "=")
(ID "setup")
(NEWLINE)
(KEYWORD def)
(ID "setup")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exec")
(PUNCT "(")
(ID "_setup")
(PUNCT ",")
(ID "globals")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "ns")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(KEYWORD not)
(ID "callable")
(PUNCT "(")
(ID "setup")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "setup is neither a string nor callable")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "inner")
(PUNCT "=")
(ID "_template_func")
(PUNCT "(")
(ID "setup")
(PUNCT ",")
(ID "stmt")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "stmt is neither a string nor callable")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "print_exc")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper to print a traceback from the timed code.\n\n        Typical use:\n\n            t = Timer(...)       # outside the try/except\n            try:\n                t.timeit(...)    # or t.repeat(...)\n            except:\n                t.print_exc()\n\n        The advantage over the standard traceback is that source lines\n        in the compiled template will be displayed.\n\n        The optional file argument directs where the traceback is\n        sent; it defaults to sys.stderr.\n        ")
(NEWLINE)
(KEYWORD import)
(ID "linecache")
(PUNCT ",")
(ID "traceback")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "src")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "linecache")
(PUNCT ".")
(ID "cache")
(PUNCT "[")
(ID "dummy_src_name")
(PUNCT "]")
(PUNCT "=")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "src")
(PUNCT ")")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "src")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(PUNCT ",")
(ID "dummy_src_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "traceback")
(PUNCT ".")
(ID "print_exc")
(PUNCT "(")
(ID "file")
(PUNCT "=")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "timeit")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "number")
(PUNCT "=")
(ID "default_number")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Time 'number' executions of the main statement.\n\n        To be precise, this executes the setup statement once, and\n        then returns the time it takes to execute the main statement\n        a number of times, as a float measured in seconds.  The\n        argument is the number of times through the loop, defaulting\n        to one million.  The main statement, the setup statement and\n        the timer function to be used are passed to the constructor.\n        ")
(NEWLINE)
(ID "it")
(PUNCT "=")
(ID "itertools")
(PUNCT ".")
(ID "repeat")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "number")
(PUNCT ")")
(NEWLINE)
(ID "gcold")
(PUNCT "=")
(ID "gc")
(PUNCT ".")
(ID "isenabled")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "gc")
(PUNCT ".")
(ID "disable")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "timing")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "inner")
(PUNCT "(")
(ID "it")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "timer")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "gcold")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "gc")
(PUNCT ".")
(ID "enable")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "timing")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repeat")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "repeat")
(PUNCT "=")
(ID "default_repeat")
(PUNCT ",")
(ID "number")
(PUNCT "=")
(ID "default_number")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Call timeit() a few times.\n\n        This is a convenience function that calls the timeit()\n        repeatedly, returning a list of results.  The first argument\n        specifies how many times to call timeit(), defaulting to 3;\n        the second argument specifies the timer argument, defaulting\n        to one million.\n\n        Note: it's tempting to calculate mean and standard deviation\n        from the result vector and report these.  However, this is not\n        very useful.  In a typical case, the lowest value gives a\n        lower bound for how fast your machine can run the given code\n        snippet; higher values in the result vector are typically not\n        caused by variability in Python's speed, but by other\n        processes interfering with your timing accuracy.  So the min()\n        of the result is probably the only number you should be\n        interested in.  After that, you should look at the entire\n        vector and apply common sense rather than statistics.\n        ")
(NEWLINE)
(ID "r")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(ID "repeat")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "t")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "timeit")
(PUNCT "(")
(ID "number")
(PUNCT ")")
(NEWLINE)
(ID "r")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "t")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "r")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "timeit")
(PUNCT "(")
(ID "stmt")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "setup")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "timer")
(PUNCT "=")
(ID "default_timer")
(PUNCT ",")
(ID "number")
(PUNCT "=")
(ID "default_number")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Convenience function to create Timer object and call timeit method.")
(NEWLINE)
(KEYWORD return)
(ID "Timer")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(ID "setup")
(PUNCT ",")
(ID "timer")
(PUNCT ")")
(PUNCT ".")
(ID "timeit")
(PUNCT "(")
(ID "number")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "repeat")
(PUNCT "(")
(ID "stmt")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "setup")
(PUNCT "=")
(LIT "pass")
(PUNCT ",")
(ID "timer")
(PUNCT "=")
(ID "default_timer")
(PUNCT ",")
(ID "repeat")
(PUNCT "=")
(ID "default_repeat")
(PUNCT ",")
(ID "number")
(PUNCT "=")
(ID "default_number")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Convenience function to create Timer object and call repeat method.")
(NEWLINE)
(KEYWORD return)
(ID "Timer")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(ID "setup")
(PUNCT ",")
(ID "timer")
(PUNCT ")")
(PUNCT ".")
(ID "repeat")
(PUNCT "(")
(ID "repeat")
(PUNCT ",")
(ID "number")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "main")
(PUNCT "(")
(ID "args")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "_wrap_timer")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Main program, used when run as a script.\n\n    The optional 'args' argument specifies the command line to be parsed,\n    defaulting to sys.argv[1:].\n\n    The return value is an exit code to be passed to sys.exit(); it\n    may be None to indicate success.\n\n    When an exception happens during timing, a traceback is printed to\n    stderr and the return value is 1.  Exceptions at other times\n    (including the template compilation) are not caught.\n\n    '_wrap_timer' is an internal interface used for unit testing.  If it\n    is not None, it must be a callable that accepts a timer function\n    and returns another timer function (used for unit testing).\n    ")
(NEWLINE)
(KEYWORD if)
(ID "args")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD import)
(ID "getopt")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "opts")
(PUNCT ",")
(ID "args")
(PUNCT "=")
(ID "getopt")
(PUNCT ".")
(ID "getopt")
(PUNCT "(")
(ID "args")
(PUNCT ",")
(LIT "n:s:r:tcpvh")
(PUNCT ",")
(PUNCT "[")
(LIT "number=")
(PUNCT ",")
(LIT "setup=")
(PUNCT ",")
(LIT "repeat=")
(PUNCT ",")
(LIT "time")
(PUNCT ",")
(LIT "clock")
(PUNCT ",")
(LIT "process")
(PUNCT ",")
(LIT "verbose")
(PUNCT ",")
(LIT "help")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "getopt")
(PUNCT ".")
(ID "error")
(KEYWORD as)
(ID "err")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(ID "err")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "use -h/--help for command line help")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT 2)
(NEWLINE)
(DEDENT)
(ID "timer")
(PUNCT "=")
(ID "default_timer")
(NEWLINE)
(ID "stmt")
(PUNCT "=")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(KEYWORD or)
(LIT "pass")
(NEWLINE)
(ID "number")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "setup")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "repeat")
(PUNCT "=")
(ID "default_repeat")
(NEWLINE)
(ID "verbose")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "precision")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(KEYWORD for)
(ID "o")
(PUNCT ",")
(ID "a")
(KEYWORD in)
(ID "opts")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-n")
(PUNCT ",")
(LIT "--number")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "number")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "a")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-s")
(PUNCT ",")
(LIT "--setup")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "setup")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "a")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-r")
(PUNCT ",")
(LIT "--repeat")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "repeat")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "a")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "repeat")
(PUNCT "<=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "repeat")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-t")
(PUNCT ",")
(LIT "--time")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "timer")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-c")
(PUNCT ",")
(LIT "--clock")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "timer")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "clock")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-p")
(PUNCT ",")
(LIT "--process")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "timer")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "process_time")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-v")
(PUNCT ",")
(LIT "--verbose")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "verbose")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "precision")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "verbose")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "o")
(KEYWORD in)
(PUNCT "(")
(LIT "-h")
(PUNCT ",")
(LIT "--help")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(ID "__doc__")
(PUNCT ",")
(ID "end")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT 0)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "setup")
(PUNCT "=")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "setup")
(PUNCT ")")
(KEYWORD or)
(LIT "pass")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "insert")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "os")
(PUNCT ".")
(ID "curdir")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "_wrap_timer")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "timer")
(PUNCT "=")
(ID "_wrap_timer")
(PUNCT "(")
(ID "timer")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "t")
(PUNCT "=")
(ID "Timer")
(PUNCT "(")
(ID "stmt")
(PUNCT ",")
(ID "setup")
(PUNCT ",")
(ID "timer")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "number")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(LIT 10)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "number")
(PUNCT "=")
(LIT 10)
(PUNCT "**")
(ID "i")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "x")
(PUNCT "=")
(ID "t")
(PUNCT ".")
(ID "timeit")
(PUNCT "(")
(ID "number")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "t")
(PUNCT ".")
(ID "print_exc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "verbose")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "%d loops -> %.*g secs")
(PUNCT "%")
(PUNCT "(")
(ID "number")
(PUNCT ",")
(ID "precision")
(PUNCT ",")
(ID "x")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "x")
(PUNCT ">=")
(LIT 0.2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "r")
(PUNCT "=")
(ID "t")
(PUNCT ".")
(ID "repeat")
(PUNCT "(")
(ID "repeat")
(PUNCT ",")
(ID "number")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "t")
(PUNCT ".")
(ID "print_exc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "best")
(PUNCT "=")
(ID "min")
(PUNCT "(")
(ID "r")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "verbose")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "raw times:")
(PUNCT ",")
(LIT " ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(PUNCT "[")
(LIT "%.*g")
(PUNCT "%")
(PUNCT "(")
(ID "precision")
(PUNCT ",")
(ID "x")
(PUNCT ")")
(KEYWORD for)
(ID "x")
(KEYWORD in)
(ID "r")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "print")
(PUNCT "(")
(LIT "%d loops,")
(PUNCT "%")
(ID "number")
(PUNCT ",")
(ID "end")
(PUNCT "=")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(ID "usec")
(PUNCT "=")
(ID "best")
(PUNCT "*")
(LIT 1000000.0)
(PUNCT "/")
(ID "number")
(NEWLINE)
(KEYWORD if)
(ID "usec")
(PUNCT "<")
(LIT 1000)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "best of %d: %.*g usec per loop")
(PUNCT "%")
(PUNCT "(")
(ID "repeat")
(PUNCT ",")
(ID "precision")
(PUNCT ",")
(ID "usec")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msec")
(PUNCT "=")
(ID "usec")
(PUNCT "/")
(LIT 1000)
(NEWLINE)
(KEYWORD if)
(ID "msec")
(PUNCT "<")
(LIT 1000)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "best of %d: %.*g msec per loop")
(PUNCT "%")
(PUNCT "(")
(ID "repeat")
(PUNCT ",")
(ID "precision")
(PUNCT ",")
(ID "msec")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sec")
(PUNCT "=")
(ID "msec")
(PUNCT "/")
(LIT 1000)
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "best of %d: %.*g sec per loop")
(PUNCT "%")
(PUNCT "(")
(ID "repeat")
(PUNCT ",")
(ID "precision")
(PUNCT ",")
(ID "sec")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "exit")
(PUNCT "(")
(ID "main")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
