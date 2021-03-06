(LIT "Utilities for with-statement contexts.  See PEP 343.")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD from)
(ID "collections")
(KEYWORD import)
(ID "deque")
(NEWLINE)
(KEYWORD from)
(ID "functools")
(KEYWORD import)
(ID "wraps")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "contextmanager")
(PUNCT ",")
(LIT "closing")
(PUNCT ",")
(LIT "ContextDecorator")
(PUNCT ",")
(LIT "ExitStack")
(PUNCT ",")
(LIT "redirect_stdout")
(PUNCT ",")
(LIT "suppress")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "ContextDecorator")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A base class or mixin that enables context managers to work as decorators.")
(NEWLINE)
(KEYWORD def)
(ID "_recreate_cm")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a recreated instance of self.\n\n        Allows an otherwise one-shot context manager like\n        _GeneratorContextManager to support use as\n        a decorator via implicit recreation.\n\n        This is a private interface just for _GeneratorContextManager.\n        See issue #11647 for details.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__call__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "func")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "@")
(ID "wraps")
(PUNCT "(")
(ID "func")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "inner")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_recreate_cm")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "func")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "inner")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_GeneratorContextManager")
(PUNCT "(")
(ID "ContextDecorator")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper for @contextmanager decorator.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "func")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "gen")
(PUNCT "=")
(ID "func")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "func")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "args")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "kwds")
(PUNCT "=")
(ID "func")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "kwds")
(NEWLINE)
(ID "doc")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "func")
(PUNCT ",")
(LIT "__doc__")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "doc")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "__doc__")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "__doc__")
(PUNCT "=")
(ID "doc")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_recreate_cm")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "func")
(PUNCT ",")
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "kwds")
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
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "next")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "gen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "StopIteration")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "generator didn't yield")
(PUNCT ")")
(KEYWORD from)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "type")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "traceback")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "next")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "gen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "StopIteration")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "generator didn't stop")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "value")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "value")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "gen")
(PUNCT ".")
(ID "throw")
(PUNCT "(")
(ID "type")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "traceback")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "generator didn't stop after throw()")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "StopIteration")
(KEYWORD as)
(ID "exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "exc")
(KEYWORD is)
(KEYWORD not)
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(KEYWORD is)
(KEYWORD not)
(ID "value")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "contextmanager")
(PUNCT "(")
(ID "func")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "@contextmanager decorator.\n\n    Typical usage:\n\n        @contextmanager\n        def some_generator(<arguments>):\n            <setup>\n            try:\n                yield <value>\n            finally:\n                <cleanup>\n\n    This makes this:\n\n        with some_generator(<arguments>) as <variable>:\n            <body>\n\n    equivalent to this:\n\n        <setup>\n        try:\n            <variable> = <value>\n            <body>\n        finally:\n            <cleanup>\n\n    ")
(NEWLINE)
(PUNCT "@")
(ID "wraps")
(PUNCT "(")
(ID "func")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "helper")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_GeneratorContextManager")
(PUNCT "(")
(ID "func")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "helper")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "closing")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Context to automatically close something at the end of a block.\n\n    Code like this:\n\n        with closing(<module>.open(<arguments>)) as f:\n            <block>\n\n    is equivalent to this:\n\n        f = <module>.open(<arguments>)\n        try:\n            <block>\n        finally:\n            f.close()\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "thing")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "thing")
(PUNCT "=")
(ID "thing")
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
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "thing")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "exc_info")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "thing")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "redirect_stdout")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Context manager for temporarily redirecting stdout to another file\n\n        # How to send help() to stderr\n        with redirect_stdout(sys.stderr):\n            help(dir)\n\n        # How to write help() to a file\n        with open('help.txt', 'w') as f:\n            with redirect_stdout(f):\n                help(pow)\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "new_target")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_new_target")
(PUNCT "=")
(ID "new_target")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_old_targets")
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
(ID "self")
(PUNCT ".")
(ID "_old_targets")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "stdout")
(PUNCT ")")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "stdout")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_new_target")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_new_target")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exctype")
(PUNCT ",")
(ID "excinst")
(PUNCT ",")
(ID "exctb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sys")
(PUNCT ".")
(ID "stdout")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_old_targets")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "suppress")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Context manager to suppress specified exceptions\n\n    After the exception is suppressed, execution proceeds with the next\n    statement following the with statement.\n\n         with suppress(FileNotFoundError):\n             os.remove(somefile)\n         # Execution still resumes here if the file was already removed\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "exceptions")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_exceptions")
(PUNCT "=")
(ID "exceptions")
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
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exctype")
(PUNCT ",")
(ID "excinst")
(PUNCT ",")
(ID "exctb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "exctype")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "issubclass")
(PUNCT "(")
(ID "exctype")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_exceptions")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "ExitStack")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Context manager for dynamic management of a stack of exit callbacks\n\n    For example:\n\n        with ExitStack() as stack:\n            files = [stack.enter_context(open(fname)) for fname in filenames]\n            # All opened files will automatically be closed at the end of\n            # the with statement, even if attempts to open files later\n            # in the list raise an exception\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT "=")
(ID "deque")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pop_all")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Preserve the context stack by transferring it to a new instance")
(NEWLINE)
(ID "new_stack")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "new_stack")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT "=")
(ID "deque")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "new_stack")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_push_cm_exit")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "cm")
(PUNCT ",")
(ID "cm_exit")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Helper to correctly register callbacks to __exit__ methods")
(NEWLINE)
(KEYWORD def)
(ID "_exit_wrapper")
(PUNCT "(")
(PUNCT "*")
(ID "exc_details")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "cm_exit")
(PUNCT "(")
(ID "cm")
(PUNCT ",")
(PUNCT "*")
(ID "exc_details")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_exit_wrapper")
(PUNCT ".")
(ID "__self__")
(PUNCT "=")
(ID "cm")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "push")
(PUNCT "(")
(ID "_exit_wrapper")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "push")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exit")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Registers a callback with the standard __exit__ method signature\n\n        Can suppress exceptions the same way __exit__ methods can.\n\n        Also accepts any object with an __exit__ method (registering a call\n        to the method instead of the object itself)\n        ")
(NEWLINE)
(ID "_cb_type")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "exit")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exit_method")
(PUNCT "=")
(ID "_cb_type")
(PUNCT ".")
(ID "__exit__")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "exit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_push_cm_exit")
(PUNCT "(")
(ID "exit")
(PUNCT ",")
(ID "exit_method")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "exit")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "callback")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "callback")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Registers an arbitrary callback and arguments.\n\n        Cannot suppress exceptions.\n        ")
(NEWLINE)
(KEYWORD def)
(ID "_exit_wrapper")
(PUNCT "(")
(ID "exc_type")
(PUNCT ",")
(ID "exc")
(PUNCT ",")
(ID "tb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "callback")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_exit_wrapper")
(PUNCT ".")
(ID "__wrapped__")
(PUNCT "=")
(ID "callback")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "push")
(PUNCT "(")
(ID "_exit_wrapper")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "callback")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "enter_context")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "cm")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Enters the supplied context manager\n\n        If successful, also pushes its __exit__ method as a callback and\n        returns the result of the __enter__ method.\n        ")
(NEWLINE)
(ID "_cm_type")
(PUNCT "=")
(ID "type")
(PUNCT "(")
(ID "cm")
(PUNCT ")")
(NEWLINE)
(ID "_exit")
(PUNCT "=")
(ID "_cm_type")
(PUNCT ".")
(ID "__exit__")
(NEWLINE)
(ID "result")
(PUNCT "=")
(ID "_cm_type")
(PUNCT ".")
(ID "__enter__")
(PUNCT "(")
(ID "cm")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_push_cm_exit")
(PUNCT "(")
(ID "cm")
(PUNCT ",")
(ID "_exit")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "result")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "close")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Immediately unwind the context stack")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "__exit__")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
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
(ID "exc_details")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "received_exc")
(PUNCT "=")
(ID "exc_details")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(NEWLINE)
(ID "frame_exc")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "_fix_exception_context")
(PUNCT "(")
(ID "new_exc")
(PUNCT ",")
(ID "old_exc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD while)
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exc_context")
(PUNCT "=")
(ID "new_exc")
(PUNCT ".")
(ID "__context__")
(NEWLINE)
(KEYWORD if)
(ID "exc_context")
(KEYWORD is)
(ID "old_exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "exc_context")
(KEYWORD is)
(KEYWORD None)
(KEYWORD or)
(ID "exc_context")
(KEYWORD is)
(ID "frame_exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "new_exc")
(PUNCT "=")
(ID "exc_context")
(NEWLINE)
(DEDENT)
(ID "new_exc")
(PUNCT ".")
(ID "__context__")
(PUNCT "=")
(ID "old_exc")
(NEWLINE)
(DEDENT)
(ID "suppressed_exc")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "pending_raise")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cb")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_exit_callbacks")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "cb")
(PUNCT "(")
(PUNCT "*")
(ID "exc_details")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "suppressed_exc")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "pending_raise")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "exc_details")
(PUNCT "=")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new_exc_details")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "_fix_exception_context")
(PUNCT "(")
(ID "new_exc_details")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "exc_details")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "pending_raise")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "exc_details")
(PUNCT "=")
(ID "new_exc_details")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "pending_raise")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fixed_ctx")
(PUNCT "=")
(ID "exc_details")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "__context__")
(NEWLINE)
(KEYWORD raise)
(ID "exc_details")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "BaseException")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exc_details")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "__context__")
(PUNCT "=")
(ID "fixed_ctx")
(NEWLINE)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "received_exc")
(KEYWORD and)
(ID "suppressed_exc")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
