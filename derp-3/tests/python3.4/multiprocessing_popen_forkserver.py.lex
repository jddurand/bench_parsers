(KEYWORD import)
(ID "io")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "reduction")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "reduction")
(PUNCT ".")
(ID "HAVE_SEND_HANDLE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "No support for sending fds between processes")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "context")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "forkserver")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "popen_fork")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "spawn")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "util")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "Popen")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "_DupFd")
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
(ID "ind")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ind")
(PUNCT "=")
(ID "ind")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "detach")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "forkserver")
(PUNCT ".")
(ID "get_inherited_fds")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "ind")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Popen")
(PUNCT "(")
(ID "popen_fork")
(PUNCT ".")
(ID "Popen")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "method")
(PUNCT "=")
(LIT "forkserver")
(NEWLINE)
(ID "DupFd")
(PUNCT "=")
(ID "_DupFd")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "process_obj")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fds")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "process_obj")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "duplicate_for_child")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fds")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "fd")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_fds")
(PUNCT ")")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_launch")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "process_obj")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "prep_data")
(PUNCT "=")
(ID "spawn")
(PUNCT ".")
(ID "get_preparation_data")
(PUNCT "(")
(ID "process_obj")
(PUNCT ".")
(ID "_name")
(PUNCT ")")
(NEWLINE)
(ID "buf")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "BytesIO")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "context")
(PUNCT ".")
(ID "set_spawning_popen")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "reduction")
(PUNCT ".")
(ID "dump")
(PUNCT "(")
(ID "prep_data")
(PUNCT ",")
(ID "buf")
(PUNCT ")")
(NEWLINE)
(ID "reduction")
(PUNCT ".")
(ID "dump")
(PUNCT "(")
(ID "process_obj")
(PUNCT ",")
(ID "buf")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "context")
(PUNCT ".")
(ID "set_spawning_popen")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "sentinel")
(PUNCT ",")
(ID "w")
(PUNCT "=")
(ID "forkserver")
(PUNCT ".")
(ID "connect_to_new_process")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_fds")
(PUNCT ")")
(NEWLINE)
(ID "util")
(PUNCT ".")
(ID "Finalize")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "os")
(PUNCT ".")
(ID "close")
(PUNCT ",")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "sentinel")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "w")
(PUNCT ",")
(LIT "wb")
(PUNCT ",")
(ID "closefd")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(KEYWORD as)
(ID "f")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "buf")
(PUNCT ".")
(ID "getbuffer")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "pid")
(PUNCT "=")
(ID "forkserver")
(PUNCT ".")
(ID "read_unsigned")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "sentinel")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "poll")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "flag")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "WNOHANG")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "returncode")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "multiprocessing")
(PUNCT ".")
(ID "connection")
(KEYWORD import)
(ID "wait")
(NEWLINE)
(ID "timeout")
(PUNCT "=")
(LIT 0)
(KEYWORD if)
(ID "flag")
(PUNCT "==")
(ID "os")
(PUNCT ".")
(ID "WNOHANG")
(KEYWORD else)
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "wait")
(PUNCT "(")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "sentinel")
(PUNCT "]")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "returncode")
(PUNCT "=")
(ID "forkserver")
(PUNCT ".")
(ID "read_unsigned")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "sentinel")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "OSError")
(PUNCT ",")
(ID "EOFError")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "returncode")
(PUNCT "=")
(LIT 255)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "returncode")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)