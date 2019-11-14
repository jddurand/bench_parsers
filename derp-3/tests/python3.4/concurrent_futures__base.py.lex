(ID "__author__")
(PUNCT "=")
(LIT "Brian Quinlan (brian@sweetapp.com)")
(NEWLINE)
(KEYWORD import)
(ID "collections")
(NEWLINE)
(KEYWORD import)
(ID "logging")
(NEWLINE)
(KEYWORD import)
(ID "threading")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(ID "FIRST_COMPLETED")
(PUNCT "=")
(LIT "FIRST_COMPLETED")
(NEWLINE)
(ID "FIRST_EXCEPTION")
(PUNCT "=")
(LIT "FIRST_EXCEPTION")
(NEWLINE)
(ID "ALL_COMPLETED")
(PUNCT "=")
(LIT "ALL_COMPLETED")
(NEWLINE)
(ID "_AS_COMPLETED")
(PUNCT "=")
(LIT "_AS_COMPLETED")
(NEWLINE)
(ID "PENDING")
(PUNCT "=")
(LIT "PENDING")
(NEWLINE)
(ID "RUNNING")
(PUNCT "=")
(LIT "RUNNING")
(NEWLINE)
(ID "CANCELLED")
(PUNCT "=")
(LIT "CANCELLED")
(NEWLINE)
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "=")
(LIT "CANCELLED_AND_NOTIFIED")
(NEWLINE)
(ID "FINISHED")
(PUNCT "=")
(LIT "FINISHED")
(NEWLINE)
(ID "_FUTURE_STATES")
(PUNCT "=")
(PUNCT "[")
(ID "PENDING")
(PUNCT ",")
(ID "RUNNING")
(PUNCT ",")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(NEWLINE)
(ID "_STATE_TO_DESCRIPTION_MAP")
(PUNCT "=")
(PUNCT "{")
(ID "PENDING")
(PUNCT ":")
(LIT "pending")
(PUNCT ",")
(ID "RUNNING")
(PUNCT ":")
(LIT "running")
(PUNCT ",")
(ID "CANCELLED")
(PUNCT ":")
(LIT "cancelled")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ":")
(LIT "cancelled")
(PUNCT ",")
(ID "FINISHED")
(PUNCT ":")
(LIT "finished")
(PUNCT "}")
(NEWLINE)
(ID "LOGGER")
(PUNCT "=")
(ID "logging")
(PUNCT ".")
(ID "getLogger")
(PUNCT "(")
(LIT "concurrent.futures")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "Error")
(PUNCT "(")
(ID "Exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Base class for all future-related exceptions.")
(NEWLINE)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "CancelledError")
(PUNCT "(")
(ID "Error")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "The Future was cancelled.")
(NEWLINE)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "TimeoutError")
(PUNCT "(")
(ID "Error")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "The operation exceeded the given deadline.")
(NEWLINE)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "_Waiter")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Provides the event that wait() and as_completed() block on.")
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
(ID "event")
(PUNCT "=")
(ID "threading")
(PUNCT ".")
(ID "Event")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "finished_futures")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "finished_futures")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "finished_futures")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "finished_futures")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_AsCompletedWaiter")
(PUNCT "(")
(ID "_Waiter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Used by as_completed().")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_AsCompletedWaiter")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT "=")
(ID "threading")
(PUNCT ".")
(ID "Lock")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_AsCompletedWaiter")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "add_result")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_AsCompletedWaiter")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "add_exception")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_AsCompletedWaiter")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "add_cancelled")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_FirstCompletedWaiter")
(PUNCT "(")
(ID "_Waiter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Used by wait(return_when=FIRST_COMPLETED).")
(NEWLINE)
(KEYWORD def)
(ID "add_result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_result")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_exception")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_cancelled")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_AllCompletedWaiter")
(PUNCT "(")
(ID "_Waiter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Used by wait(return_when=FIRST_EXCEPTION and ALL_COMPLETED).")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "num_pending_calls")
(PUNCT ",")
(ID "stop_on_exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "num_pending_calls")
(PUNCT "=")
(ID "num_pending_calls")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stop_on_exception")
(PUNCT "=")
(ID "stop_on_exception")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT "=")
(ID "threading")
(PUNCT ".")
(ID "Lock")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_decrement_pending_calls")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "lock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "num_pending_calls")
(PUNCT "-=")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "num_pending_calls")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_result")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_decrement_pending_calls")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_exception")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "stop_on_exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "set")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_decrement_pending_calls")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "future")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "add_cancelled")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_decrement_pending_calls")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_AcquireFutures")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A context manager that does an ordered acquire of Future conditions.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "futures")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "futures")
(PUNCT "=")
(ID "sorted")
(PUNCT "(")
(ID "futures")
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "id")
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
(KEYWORD for)
(ID "future")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "futures")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "future")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "acquire")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
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
(KEYWORD for)
(ID "future")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "futures")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "future")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "release")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_create_and_install_waiters")
(PUNCT "(")
(ID "fs")
(PUNCT ",")
(ID "return_when")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "return_when")
(PUNCT "==")
(ID "_AS_COMPLETED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT "=")
(ID "_AsCompletedWaiter")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "return_when")
(PUNCT "==")
(ID "FIRST_COMPLETED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT "=")
(ID "_FirstCompletedWaiter")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pending_count")
(PUNCT "=")
(ID "sum")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "_state")
(KEYWORD not)
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "return_when")
(PUNCT "==")
(ID "FIRST_EXCEPTION")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT "=")
(ID "_AllCompletedWaiter")
(PUNCT "(")
(ID "pending_count")
(PUNCT ",")
(ID "stop_on_exception")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "return_when")
(PUNCT "==")
(ID "ALL_COMPLETED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT "=")
(ID "_AllCompletedWaiter")
(PUNCT "(")
(ID "pending_count")
(PUNCT ",")
(ID "stop_on_exception")
(PUNCT "=")
(KEYWORD False)
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
(LIT "Invalid return condition: %r")
(PUNCT "%")
(ID "return_when")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "_waiters")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "waiter")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "waiter")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "as_completed")
(PUNCT "(")
(ID "fs")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "An iterator over the given futures that yields each as it completes.\n\n    Args:\n        fs: The sequence of Futures (possibly created by different Executors) to\n            iterate over.\n        timeout: The maximum number of seconds to wait. If None, then there\n            is no limit on the wait time.\n\n    Returns:\n        An iterator that yields the given Futures as they complete (finished or\n        cancelled). If any given Futures are duplicated, they will be returned\n        once.\n\n    Raises:\n        TimeoutError: If the entire result iterator could not be generated\n            before the given timeout.\n    ")
(NEWLINE)
(KEYWORD if)
(ID "timeout")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "end_time")
(PUNCT "=")
(ID "timeout")
(PUNCT "+")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "fs")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "_AcquireFutures")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "finished")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(ID "f")
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(KEYWORD if)
(ID "f")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "pending")
(PUNCT "=")
(ID "fs")
(PUNCT "-")
(ID "finished")
(NEWLINE)
(ID "waiter")
(PUNCT "=")
(ID "_create_and_install_waiters")
(PUNCT "(")
(ID "fs")
(PUNCT ",")
(ID "_AS_COMPLETED")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(KEYWORD from)
(ID "finished")
(NEWLINE)
(KEYWORD while)
(ID "pending")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "timeout")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "wait_timeout")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "wait_timeout")
(PUNCT "=")
(ID "end_time")
(PUNCT "-")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "wait_timeout")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TimeoutError")
(PUNCT "(")
(LIT "%d (of %d) futures unfinished")
(PUNCT "%")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "pending")
(PUNCT ")")
(PUNCT ",")
(ID "len")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "waiter")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "wait")
(PUNCT "(")
(ID "wait_timeout")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "waiter")
(PUNCT ".")
(ID "lock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "finished")
(PUNCT "=")
(ID "waiter")
(PUNCT ".")
(ID "finished_futures")
(NEWLINE)
(ID "waiter")
(PUNCT ".")
(ID "finished_futures")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "waiter")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "clear")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "future")
(KEYWORD in)
(ID "finished")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "future")
(NEWLINE)
(ID "pending")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "future")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "f")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "_waiters")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "waiter")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(ID "DoneAndNotDoneFutures")
(PUNCT "=")
(ID "collections")
(PUNCT ".")
(ID "namedtuple")
(PUNCT "(")
(LIT "DoneAndNotDoneFutures")
(PUNCT ",")
(LIT "done not_done")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "wait")
(PUNCT "(")
(ID "fs")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "return_when")
(PUNCT "=")
(ID "ALL_COMPLETED")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Wait for the futures in the given sequence to complete.\n\n    Args:\n        fs: The sequence of Futures (possibly created by different Executors) to\n            wait upon.\n        timeout: The maximum number of seconds to wait. If None, then there\n            is no limit on the wait time.\n        return_when: Indicates when this function should return. The options\n            are:\n\n            FIRST_COMPLETED - Return when any future finishes or is\n                              cancelled.\n            FIRST_EXCEPTION - Return when any future finishes by raising an\n                              exception. If no future raises an exception\n                              then it is equivalent to ALL_COMPLETED.\n            ALL_COMPLETED -   Return when all futures finish or are cancelled.\n\n    Returns:\n        A named 2-tuple of sets. The first set, named 'done', contains the\n        futures that completed (is finished or cancelled) before the wait\n        completed. The second set, named 'not_done', contains uncompleted\n        futures.\n    ")
(NEWLINE)
(KEYWORD with)
(ID "_AcquireFutures")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "done")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(ID "f")
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(KEYWORD if)
(ID "f")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "not_done")
(PUNCT "=")
(ID "set")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT "-")
(ID "done")
(NEWLINE)
(KEYWORD if)
(PUNCT "(")
(ID "return_when")
(PUNCT "==")
(ID "FIRST_COMPLETED")
(PUNCT ")")
(KEYWORD and)
(ID "done")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "DoneAndNotDoneFutures")
(PUNCT "(")
(ID "done")
(PUNCT ",")
(ID "not_done")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(PUNCT "(")
(ID "return_when")
(PUNCT "==")
(ID "FIRST_EXCEPTION")
(PUNCT ")")
(KEYWORD and)
(ID "done")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "any")
(PUNCT "(")
(ID "f")
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "done")
(KEYWORD if)
(KEYWORD not)
(ID "f")
(PUNCT ".")
(ID "cancelled")
(PUNCT "(")
(PUNCT ")")
(KEYWORD and)
(ID "f")
(PUNCT ".")
(ID "exception")
(PUNCT "(")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "DoneAndNotDoneFutures")
(PUNCT "(")
(ID "done")
(PUNCT ",")
(ID "not_done")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "done")
(PUNCT ")")
(PUNCT "==")
(ID "len")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "DoneAndNotDoneFutures")
(PUNCT "(")
(ID "done")
(PUNCT ",")
(ID "not_done")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "waiter")
(PUNCT "=")
(ID "_create_and_install_waiters")
(PUNCT "(")
(ID "fs")
(PUNCT ",")
(ID "return_when")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "waiter")
(PUNCT ".")
(ID "event")
(PUNCT ".")
(ID "wait")
(PUNCT "(")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "f")
(KEYWORD in)
(ID "fs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "f")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "_waiters")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "waiter")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "done")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(ID "waiter")
(PUNCT ".")
(ID "finished_futures")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "DoneAndNotDoneFutures")
(PUNCT "(")
(ID "done")
(PUNCT ",")
(ID "set")
(PUNCT "(")
(ID "fs")
(PUNCT ")")
(PUNCT "-")
(ID "done")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Future")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Represents the result of an asynchronous computation.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Initializes the future. Should not be called by clients.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT "=")
(ID "threading")
(PUNCT ".")
(ID "Condition")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "PENDING")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_result")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_exception")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_waiters")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_done_callbacks")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_invoke_callbacks")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "callback")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_done_callbacks")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "callback")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "LOGGER")
(PUNCT ".")
(ID "exception")
(PUNCT "(")
(LIT "exception calling callback for %r")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__repr__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "FINISHED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<Future at %s state=%s raised %s>")
(PUNCT "%")
(PUNCT "(")
(ID "hex")
(PUNCT "(")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "_STATE_TO_DESCRIPTION_MAP")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "]")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_exception")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<Future at %s state=%s returned %s>")
(PUNCT "%")
(PUNCT "(")
(ID "hex")
(PUNCT "(")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "_STATE_TO_DESCRIPTION_MAP")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "]")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_result")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(LIT "<Future at %s state=%s>")
(PUNCT "%")
(PUNCT "(")
(ID "hex")
(PUNCT "(")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "_STATE_TO_DESCRIPTION_MAP")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "cancel")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Cancel the future if possible.\n\n        Returns True if the future was cancelled, False otherwise. A future\n        cannot be cancelled if it is running or has already completed.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "RUNNING")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "CANCELLED")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "notify_all")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_invoke_callbacks")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if the future was cancelled.")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "running")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if the future is currently executing.")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "RUNNING")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "done")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True of the future was cancelled or finished executing.")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__get_result")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "self")
(PUNCT ".")
(ID "_exception")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_result")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_done_callback")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fn")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Attaches a callable that will be called when the future finishes.\n\n        Args:\n            fn: A callable that will be called with this future as its only\n                argument when the future completes or is cancelled. The callable\n                will always be called by a thread in the same process in which\n                it was added. If the future has already completed or been\n                cancelled then the callable will be called immediately. These\n                callables are called in the order that they were added.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD not)
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT ",")
(ID "FINISHED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_done_callbacks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "fn")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "fn")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the result of the call that the future represents.\n\n        Args:\n            timeout: The number of seconds to wait for the result if the future\n                isn't done. If None, then there is no limit on the wait time.\n\n        Returns:\n            The result of the call that the future represents.\n\n        Raises:\n            CancelledError: If the future was cancelled.\n            TimeoutError: If the future didn't finish executing before the given\n                timeout.\n            Exception: If the call raised then that exception will be raised.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CancelledError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "FINISHED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "__get_result")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "wait")
(PUNCT "(")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CancelledError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "FINISHED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "__get_result")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TimeoutError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the exception raised by the call that the future represents.\n\n        Args:\n            timeout: The number of seconds to wait for the exception if the\n                future isn't done. If None, then there is no limit on the wait\n                time.\n\n        Returns:\n            The exception raised by the call that the future represents or None\n            if the call completed without raising.\n\n        Raises:\n            CancelledError: If the future was cancelled.\n            TimeoutError: If the future didn't finish executing before the given\n                timeout.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CancelledError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "FINISHED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_exception")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "wait")
(PUNCT "(")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(KEYWORD in)
(PUNCT "[")
(ID "CANCELLED")
(PUNCT ",")
(ID "CANCELLED_AND_NOTIFIED")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CancelledError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "FINISHED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_exception")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TimeoutError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "set_running_or_notify_cancel")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Mark the future as running or process any cancel notifications.\n\n        Should only be used by Executor implementations and unit tests.\n\n        If the future has been cancelled (cancel() was called and returned\n        True) then any threads waiting on the future completing (though calls\n        to as_completed() or wait()) are notified and False is returned.\n\n        If the future was not cancelled then it is put in the running state\n        (future calls to running() will return True) and True is returned.\n\n        This method should be called by Executor implementations before\n        executing the work associated with this future. If this method returns\n        False then the work should not be executed.\n\n        Returns:\n            False if the Future was cancelled, True otherwise.\n\n        Raises:\n            RuntimeError: if this method was already called or if set_result()\n                or set_exception() was called.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "CANCELLED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "CANCELLED_AND_NOTIFIED")
(NEWLINE)
(KEYWORD for)
(ID "waiter")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_waiters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT ".")
(ID "add_cancelled")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "==")
(ID "PENDING")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "RUNNING")
(NEWLINE)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "LOGGER")
(PUNCT ".")
(ID "critical")
(PUNCT "(")
(LIT "Future %s in unexpected state: %s")
(PUNCT ",")
(ID "id")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "Future in unexpected state")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "set_result")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "result")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Sets the return value of work associated with the future.\n\n        Should only be used by Executor implementations and unit tests.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_result")
(PUNCT "=")
(ID "result")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "FINISHED")
(NEWLINE)
(KEYWORD for)
(ID "waiter")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_waiters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT ".")
(ID "add_result")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "notify_all")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_invoke_callbacks")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Sets the result of the future as being the given exception.\n\n        Should only be used by Executor implementations and unit tests.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_exception")
(PUNCT "=")
(ID "exception")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_state")
(PUNCT "=")
(ID "FINISHED")
(NEWLINE)
(KEYWORD for)
(ID "waiter")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_waiters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "waiter")
(PUNCT ".")
(ID "add_exception")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_condition")
(PUNCT ".")
(ID "notify_all")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_invoke_callbacks")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Executor")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "This is an abstract base class for concrete asynchronous executors.")
(NEWLINE)
(KEYWORD def)
(ID "submit")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fn")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kwargs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Submits a callable to be executed with the given arguments.\n\n        Schedules the callable to be executed as fn(*args, **kwargs) and returns\n        a Future instance representing the execution of the callable.\n\n        Returns:\n            A Future representing the given call.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "map")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fn")
(PUNCT ",")
(PUNCT "*")
(ID "iterables")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Returns a iterator equivalent to map(fn, iter).\n\n        Args:\n            fn: A callable that will take as many arguments as there are\n                passed iterables.\n            timeout: The maximum number of seconds to wait. If None, then there\n                is no limit on the wait time.\n\n        Returns:\n            An iterator equivalent to: map(func, *iterables) but the calls may\n            be evaluated out-of-order.\n\n        Raises:\n            TimeoutError: If the entire result iterator could not be generated\n                before the given timeout.\n            Exception: If fn(*args) raises for any values.\n        ")
(NEWLINE)
(KEYWORD if)
(ID "timeout")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "end_time")
(PUNCT "=")
(ID "timeout")
(PUNCT "+")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "fs")
(PUNCT "=")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "submit")
(PUNCT "(")
(ID "fn")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(KEYWORD for)
(ID "args")
(KEYWORD in)
(ID "zip")
(PUNCT "(")
(PUNCT "*")
(ID "iterables")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "result_iterator")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "future")
(KEYWORD in)
(ID "fs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "timeout")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "future")
(PUNCT ".")
(ID "result")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "future")
(PUNCT ".")
(ID "result")
(PUNCT "(")
(ID "end_time")
(PUNCT "-")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "future")
(KEYWORD in)
(ID "fs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "future")
(PUNCT ".")
(ID "cancel")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "result_iterator")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "shutdown")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "wait")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Clean-up the resources associated with the Executor.\n\n        It is safe to call this method several times. Otherwise, no other\n        methods can be called after this one.\n\n        Args:\n            wait: If True then shutdown will not return until all running\n                futures have finished executing and the resources used by the\n                executor have been reclaimed.\n        ")
(NEWLINE)
(KEYWORD pass)
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
(ID "exc_type")
(PUNCT ",")
(ID "exc_val")
(PUNCT ",")
(ID "exc_tb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "shutdown")
(PUNCT "(")
(ID "wait")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)