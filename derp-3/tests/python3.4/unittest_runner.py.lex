(LIT "Running tests")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD import)
(ID "warnings")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "result")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "signals")
(KEYWORD import)
(ID "registerResult")
(NEWLINE)
(ID "__unittest")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD class)
(ID "_WritelnDecorator")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Used to decorate file-like objects with a handy 'writeln' method")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stream")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT "=")
(ID "stream")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getattr__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "attr")
(KEYWORD in)
(PUNCT "(")
(LIT "stream")
(PUNCT ",")
(LIT "__getstate__")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AttributeError")
(PUNCT "(")
(ID "attr")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "writeln")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "arg")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "arg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "arg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "TextTestResult")
(PUNCT "(")
(ID "result")
(PUNCT ".")
(ID "TestResult")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A test result class that can print formatted text results to a stream.\n\n    Used by TextTestRunner.\n    ")
(NEWLINE)
(ID "separator1")
(PUNCT "=")
(LIT "=")
(PUNCT "*")
(LIT 70)
(NEWLINE)
(ID "separator2")
(PUNCT "=")
(LIT "-")
(PUNCT "*")
(LIT 70)
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "descriptions")
(PUNCT ",")
(ID "verbosity")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "stream")
(PUNCT ",")
(ID "descriptions")
(PUNCT ",")
(ID "verbosity")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT "=")
(ID "stream")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT "=")
(ID "verbosity")
(PUNCT ">")
(LIT 1)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT "=")
(ID "verbosity")
(PUNCT "==")
(LIT 1)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "descriptions")
(PUNCT "=")
(ID "descriptions")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getDescription")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc_first_line")
(PUNCT "=")
(ID "test")
(PUNCT ".")
(ID "shortDescription")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "descriptions")
(KEYWORD and)
(ID "doc_first_line")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(PUNCT ",")
(ID "doc_first_line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "str")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "startTest")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "startTest")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "getDescription")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT " ... ")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addSuccess")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addSuccess")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "ok")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addError")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addError")
(PUNCT "(")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "ERROR")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "E")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addFailure")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addFailure")
(PUNCT "(")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "FAIL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "F")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addSkip")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ",")
(ID "reason")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addSkip")
(PUNCT "(")
(ID "test")
(PUNCT ",")
(ID "reason")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "skipped {0!r}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "reason")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "s")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addExpectedFailure")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addExpectedFailure")
(PUNCT "(")
(ID "test")
(PUNCT ",")
(ID "err")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "expected failure")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "x")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "addUnexpectedSuccess")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TextTestResult")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "addUnexpectedSuccess")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "unexpected success")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "dots")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "u")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "printErrors")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "dots")
(KEYWORD or)
(ID "self")
(PUNCT ".")
(ID "showAll")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "printErrorList")
(PUNCT "(")
(LIT "ERROR")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "errors")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "printErrorList")
(PUNCT "(")
(LIT "FAIL")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "failures")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "printErrorList")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "flavour")
(PUNCT ",")
(ID "errors")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "test")
(PUNCT ",")
(ID "err")
(KEYWORD in)
(ID "errors")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "separator1")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "flavour")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "getDescription")
(PUNCT "(")
(ID "test")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "separator2")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "%s")
(PUNCT "%")
(ID "err")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "TextTestRunner")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A test runner class that displays results in textual form.\n\n    It prints out the names of tests as they are run, errors as they\n    occur, and a summary of the results at the end of the test run.\n    ")
(NEWLINE)
(ID "resultclass")
(PUNCT "=")
(ID "TextTestResult")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stream")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "descriptions")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "verbosity")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "failfast")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "buffer")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "resultclass")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "warnings")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "stream")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stream")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "stderr")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT "=")
(ID "_WritelnDecorator")
(PUNCT "(")
(ID "stream")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "descriptions")
(PUNCT "=")
(ID "descriptions")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "verbosity")
(PUNCT "=")
(ID "verbosity")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "failfast")
(PUNCT "=")
(ID "failfast")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "buffer")
(PUNCT "=")
(ID "buffer")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "warnings")
(PUNCT "=")
(ID "warnings")
(NEWLINE)
(KEYWORD if)
(ID "resultclass")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "resultclass")
(PUNCT "=")
(ID "resultclass")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_makeResult")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "resultclass")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "descriptions")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "verbosity")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "run")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "test")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Run the given test case or test suite.")
(NEWLINE)
(ID "result")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_makeResult")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "registerResult")
(PUNCT "(")
(ID "result")
(PUNCT ")")
(NEWLINE)
(ID "result")
(PUNCT ".")
(ID "failfast")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "failfast")
(NEWLINE)
(ID "result")
(PUNCT ".")
(ID "buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "buffer")
(NEWLINE)
(KEYWORD with)
(ID "warnings")
(PUNCT ".")
(ID "catch_warnings")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "warnings")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "warnings")
(PUNCT ".")
(ID "simplefilter")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "warnings")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "warnings")
(KEYWORD in)
(PUNCT "[")
(LIT "default")
(PUNCT ",")
(LIT "always")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "warnings")
(PUNCT ".")
(ID "filterwarnings")
(PUNCT "(")
(LIT "module")
(PUNCT ",")
(ID "category")
(PUNCT "=")
(ID "DeprecationWarning")
(PUNCT ",")
(ID "message")
(PUNCT "=")
(LIT "Please use assert\\w+ instead.")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "startTime")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "startTestRun")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "result")
(PUNCT ",")
(LIT "startTestRun")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "startTestRun")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "startTestRun")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "test")
(PUNCT "(")
(ID "result")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stopTestRun")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "result")
(PUNCT ",")
(LIT "stopTestRun")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "stopTestRun")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stopTestRun")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "stopTime")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "timeTaken")
(PUNCT "=")
(ID "stopTime")
(PUNCT "-")
(ID "startTime")
(NEWLINE)
(ID "result")
(PUNCT ".")
(ID "printErrors")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "result")
(PUNCT ",")
(LIT "separator2")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(ID "result")
(PUNCT ".")
(ID "separator2")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "run")
(PUNCT "=")
(ID "result")
(PUNCT ".")
(ID "testsRun")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT "Ran %d test%s in %.3fs")
(PUNCT "%")
(PUNCT "(")
(ID "run")
(PUNCT ",")
(ID "run")
(PUNCT "!=")
(LIT 1)
(KEYWORD and)
(LIT "s")
(KEYWORD or)
(LIT "")
(PUNCT ",")
(ID "timeTaken")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "expectedFails")
(PUNCT "=")
(ID "unexpectedSuccesses")
(PUNCT "=")
(ID "skipped")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "results")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "len")
(PUNCT ",")
(PUNCT "(")
(ID "result")
(PUNCT ".")
(ID "expectedFailures")
(PUNCT ",")
(ID "result")
(PUNCT ".")
(ID "unexpectedSuccesses")
(PUNCT ",")
(ID "result")
(PUNCT ".")
(ID "skipped")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "expectedFails")
(PUNCT ",")
(ID "unexpectedSuccesses")
(PUNCT ",")
(ID "skipped")
(PUNCT "=")
(ID "results")
(NEWLINE)
(DEDENT)
(ID "infos")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "result")
(PUNCT ".")
(ID "wasSuccessful")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "FAILED")
(PUNCT ")")
(NEWLINE)
(ID "failed")
(PUNCT ",")
(ID "errored")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "result")
(PUNCT ".")
(ID "failures")
(PUNCT ")")
(PUNCT ",")
(ID "len")
(PUNCT "(")
(ID "result")
(PUNCT ".")
(ID "errors")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "failed")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "infos")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "failures=%d")
(PUNCT "%")
(ID "failed")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "errored")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "infos")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "errors=%d")
(PUNCT "%")
(ID "errored")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "OK")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "skipped")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "infos")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "skipped=%d")
(PUNCT "%")
(ID "skipped")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "expectedFails")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "infos")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "expected failures=%d")
(PUNCT "%")
(ID "expectedFails")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "unexpectedSuccesses")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "infos")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "unexpected successes=%d")
(PUNCT "%")
(ID "unexpectedSuccesses")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "infos")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "writeln")
(PUNCT "(")
(LIT " (%s)")
(PUNCT "%")
(PUNCT "(")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "infos")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stream")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "result")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
