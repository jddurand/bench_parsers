(LIT "A POP3 client class.\n\nBased on the J. Myers POP3 draft, Jan. 96\n")
(NEWLINE)
(KEYWORD import)
(ID "errno")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD import)
(ID "socket")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "ssl")
(NEWLINE)
(ID "HAVE_SSL")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "HAVE_SSL")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "POP3")
(PUNCT ",")
(LIT "error_proto")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "error_proto")
(PUNCT "(")
(ID "Exception")
(PUNCT ")")
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(ID "POP3_PORT")
(PUNCT "=")
(LIT 110)
(NEWLINE)
(ID "POP3_SSL_PORT")
(PUNCT "=")
(LIT 995)
(NEWLINE)
(ID "CR")
(PUNCT "=")
(LIT #"\r")
(NEWLINE)
(ID "LF")
(PUNCT "=")
(LIT #"\n")
(NEWLINE)
(ID "CRLF")
(PUNCT "=")
(ID "CR")
(PUNCT "+")
(ID "LF")
(NEWLINE)
(ID "_MAXLINE")
(PUNCT "=")
(LIT 2048)
(NEWLINE)
(KEYWORD class)
(ID "POP3")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "This class supports both the minimal and optional command sets.\n    Arguments can be strings or integers (where appropriate)\n    (e.g.: retr(1) and retr('1') both work equally well.\n\n    Minimal Command Set:\n            USER name               user(name)\n            PASS string             pass_(string)\n            STAT                    stat()\n            LIST [msg]              list(msg = None)\n            RETR msg                retr(msg)\n            DELE msg                dele(msg)\n            NOOP                    noop()\n            RSET                    rset()\n            QUIT                    quit()\n\n    Optional Commands (some servers support these):\n            RPOP name               rpop(name)\n            APOP name digest        apop(name, digest)\n            TOP msg n               top(msg, n)\n            UIDL [msg]              uidl(msg = None)\n            CAPA                    capa()\n            STLS                    stls()\n\n    Raises one exception: 'error_proto'.\n\n    Instantiate with:\n            POP3(hostname, port=110)\n\n    NB:     the POP protocol locks the mailbox from user\n            authorization until QUIT, so be sure to get in, suck\n            the messages, and quit, each time you access the\n            mailbox.\n\n            POP is a line-based protocol, which means large mail\n            messages consume lots of python cycles reading them\n            line-by-line.\n\n            If it's available on your mail server, use IMAP4\n            instead, it doesn't suffer from the two problems\n            above.\n    ")
(NEWLINE)
(ID "encoding")
(PUNCT "=")
(LIT "UTF-8")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "host")
(PUNCT ",")
(ID "port")
(PUNCT "=")
(ID "POP3_PORT")
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "_GLOBAL_DEFAULT_TIMEOUT")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "host")
(PUNCT "=")
(ID "host")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "port")
(PUNCT "=")
(ID "port")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tls_established")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_create_socket")
(PUNCT "(")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ".")
(ID "makefile")
(PUNCT "(")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "welcome")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_getresp")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_create_socket")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "socket")
(PUNCT ".")
(ID "create_connection")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "host")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "port")
(PUNCT ")")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_putline")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(ID "print")
(PUNCT "(")
(LIT "*put*")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ".")
(ID "sendall")
(PUNCT "(")
(ID "line")
(PUNCT "+")
(ID "CRLF")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_putcmd")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT ":")
(ID "print")
(PUNCT "(")
(LIT "*cmd*")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "line")
(PUNCT "=")
(ID "bytes")
(PUNCT "(")
(ID "line")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "encoding")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_putline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_getline")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(ID "_MAXLINE")
(PUNCT "+")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ">")
(ID "_MAXLINE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "line too long")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(ID "print")
(PUNCT "(")
(LIT "*get*")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "line")
(PUNCT ":")
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR EOF")
(PUNCT ")")
(NEWLINE)
(ID "octets")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(PUNCT "[")
(PUNCT "-")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(PUNCT "==")
(ID "CRLF")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "line")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 2)
(PUNCT "]")
(PUNCT ",")
(ID "octets")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(ID "CR")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "octets")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "line")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "octets")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_getresp")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "resp")
(PUNCT ",")
(ID "o")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_getline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(ID "print")
(PUNCT "(")
(LIT "*resp*")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "resp")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "resp")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT #"+")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(ID "resp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "resp")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_getlongresp")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "resp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_getresp")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "list")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(PUNCT ";")
(ID "octets")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "line")
(PUNCT ",")
(ID "o")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_getline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(ID "line")
(PUNCT "!=")
(LIT #".")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT #"..")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "o")
(PUNCT "=")
(ID "o")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "octets")
(PUNCT "=")
(ID "octets")
(PUNCT "+")
(ID "o")
(NEWLINE)
(ID "list")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(ID "line")
(PUNCT ",")
(ID "o")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_getline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "resp")
(PUNCT ",")
(ID "list")
(PUNCT ",")
(ID "octets")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_shortcmd")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_putcmd")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_getresp")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_longcmd")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_putcmd")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_getlongresp")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getwelcome")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "welcome")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_debuglevel")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "level")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT "=")
(ID "level")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "user")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "user")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Send user name, return response\n\n        (should indicate password required).\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "USER %s")
(PUNCT "%")
(ID "user")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pass_")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "pswd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Send password, return response\n\n        (response includes message count, mailbox size).\n\n        NB: mailbox is locked by server from here to 'quit()'\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "PASS %s")
(PUNCT "%")
(ID "pswd")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "stat")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get mailbox status.\n\n        Result is tuple of 2 ints (message count, mailbox size)\n        ")
(NEWLINE)
(ID "retval")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "STAT")
(PUNCT ")")
(NEWLINE)
(ID "rets")
(PUNCT "=")
(ID "retval")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_debugging")
(PUNCT ":")
(ID "print")
(PUNCT "(")
(LIT "*stat*")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "rets")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "numMessages")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "rets")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "sizeMessages")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "rets")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "numMessages")
(PUNCT ",")
(ID "sizeMessages")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "list")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "which")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Request listing, return result.\n\n        Result without a message number argument is in form\n        ['response', ['mesg_num octets', ...], octets].\n\n        Result when a message number argument is given is a\n        single response: the \"scan listing\" for that message.\n        ")
(NEWLINE)
(KEYWORD if)
(ID "which")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "LIST %s")
(PUNCT "%")
(ID "which")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_longcmd")
(PUNCT "(")
(LIT "LIST")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "retr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "which")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Retrieve whole message number 'which'.\n\n        Result is in form ['response', ['line', ...], octets].\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_longcmd")
(PUNCT "(")
(LIT "RETR %s")
(PUNCT "%")
(ID "which")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dele")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "which")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Delete message number 'which'.\n\n        Result is 'response'.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "DELE %s")
(PUNCT "%")
(ID "which")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "noop")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Does nothing.\n\n        One supposes the response indicates the server is alive.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "NOOP")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "rset")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Unmark all messages marked for deletion.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "RSET")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "quit")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Signoff: commit changes on server, unlock mailbox, close connection.")
(NEWLINE)
(ID "resp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "QUIT")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "resp")
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
(LIT "Close the connection without assuming anything about it.")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "file")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "sock")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ".")
(ID "shutdown")
(PUNCT "(")
(ID "socket")
(PUNCT ".")
(ID "SHUT_RDWR")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "OSError")
(KEYWORD as)
(ID "e")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "e")
(PUNCT ".")
(ID "errno")
(PUNCT "!=")
(ID "errno")
(PUNCT ".")
(ID "ENOTCONN")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "rpop")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "user")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Not sure what this does.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "RPOP %s")
(PUNCT "%")
(ID "user")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "timestamp")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT #"\\+OK.*(<[^>]+>)")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "apop")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "user")
(PUNCT ",")
(ID "password")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Authorisation\n\n        - only possible if server has supplied a timestamp in initial greeting.\n\n        Args:\n                user     - mailbox user;\n                password - mailbox password.\n\n        NB: mailbox is locked by server from here to 'quit()'\n        ")
(NEWLINE)
(ID "secret")
(PUNCT "=")
(ID "bytes")
(PUNCT "(")
(ID "password")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "encoding")
(PUNCT ")")
(NEWLINE)
(ID "m")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "timestamp")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "welcome")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR APOP not supported by server")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD import)
(ID "hashlib")
(NEWLINE)
(ID "digest")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(PUNCT "+")
(ID "secret")
(NEWLINE)
(ID "digest")
(PUNCT "=")
(ID "hashlib")
(PUNCT ".")
(ID "md5")
(PUNCT "(")
(ID "digest")
(PUNCT ")")
(PUNCT ".")
(ID "hexdigest")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "APOP %s %s")
(PUNCT "%")
(PUNCT "(")
(ID "user")
(PUNCT ",")
(ID "digest")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "top")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "which")
(PUNCT ",")
(ID "howmuch")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Retrieve message header of message number 'which'\n        and first 'howmuch' lines of message body.\n\n        Result is in form ['response', ['line', ...], octets].\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_longcmd")
(PUNCT "(")
(LIT "TOP %s %s")
(PUNCT "%")
(PUNCT "(")
(ID "which")
(PUNCT ",")
(ID "howmuch")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "uidl")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "which")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return message digest (unique id) list.\n\n        If 'which', result contains unique id for that message\n        in the form 'response mesgnum uid', otherwise result is\n        the list ['response', ['mesgnum uid', ...], octets]\n        ")
(NEWLINE)
(KEYWORD if)
(ID "which")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "UIDL %s")
(PUNCT "%")
(ID "which")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_longcmd")
(PUNCT "(")
(LIT "UIDL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "capa")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return server capabilities (RFC 2449) as a dictionary\n        >>> c=poplib.POP3('localhost')\n        >>> c.capa()\n        {'IMPLEMENTATION': ['Cyrus', 'POP3', 'server', 'v2.2.12'],\n         'TOP': [], 'LOGIN-DELAY': ['0'], 'AUTH-RESP-CODE': [],\n         'EXPIRE': ['NEVER'], 'USER': [], 'STLS': [], 'PIPELINING': [],\n         'UIDL': [], 'RESP-CODES': []}\n        >>>\n\n        Really, according to RFC 2449, the cyrus folks should avoid\n        having the implementation split into multiple arguments...\n        ")
(NEWLINE)
(KEYWORD def)
(ID "_parsecap")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lst")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ")")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "lst")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(ID "lst")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "caps")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "resp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_longcmd")
(PUNCT "(")
(LIT "CAPA")
(PUNCT ")")
(NEWLINE)
(ID "rawcaps")
(PUNCT "=")
(ID "resp")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "capline")
(KEYWORD in)
(ID "rawcaps")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "capnm")
(PUNCT ",")
(ID "capargs")
(PUNCT "=")
(ID "_parsecap")
(PUNCT "(")
(ID "capline")
(PUNCT ")")
(NEWLINE)
(ID "caps")
(PUNCT "[")
(ID "capnm")
(PUNCT "]")
(PUNCT "=")
(ID "capargs")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD except)
(ID "error_proto")
(KEYWORD as)
(ID "_err")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR CAPA not supported by server")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "caps")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "stls")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "context")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Start a TLS session on the active connection as specified in RFC 2595.\n\n                context - a ssl.SSLContext\n        ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "HAVE_SSL")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR TLS support missing")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_tls_established")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR TLS session already established")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "caps")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "capa")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(LIT "STLS")
(KEYWORD in)
(ID "caps")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR STLS not supported by server")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "context")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "context")
(PUNCT "=")
(ID "ssl")
(PUNCT ".")
(ID "_create_stdlib_context")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "resp")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_shortcmd")
(PUNCT "(")
(LIT "STLS")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT "=")
(ID "context")
(PUNCT ".")
(ID "wrap_socket")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ",")
(ID "server_hostname")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "host")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "sock")
(PUNCT ".")
(ID "makefile")
(PUNCT "(")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tls_established")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD return)
(ID "resp")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "HAVE_SSL")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD class)
(ID "POP3_SSL")
(PUNCT "(")
(ID "POP3")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "POP3 client class over SSL connection\n\n        Instantiate with: POP3_SSL(hostname, port=995, keyfile=None, certfile=None,\n                                   context=None)\n\n               hostname - the hostname of the pop3 over ssl server\n               port - port number\n               keyfile - PEM formatted file that contains your private key\n               certfile - PEM formatted certificate chain file\n               context - a ssl.SSLContext\n\n        See the methods of the parent class POP3 for more documentation.\n        ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "host")
(PUNCT ",")
(ID "port")
(PUNCT "=")
(ID "POP3_SSL_PORT")
(PUNCT ",")
(ID "keyfile")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "certfile")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "timeout")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "_GLOBAL_DEFAULT_TIMEOUT")
(PUNCT ",")
(ID "context")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "context")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "keyfile")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "context and keyfile arguments are mutually ")
(LIT "exclusive")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "context")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "certfile")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "context and certfile arguments are mutually ")
(LIT "exclusive")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "keyfile")
(PUNCT "=")
(ID "keyfile")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "certfile")
(PUNCT "=")
(ID "certfile")
(NEWLINE)
(KEYWORD if)
(ID "context")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "context")
(PUNCT "=")
(ID "ssl")
(PUNCT ".")
(ID "_create_stdlib_context")
(PUNCT "(")
(ID "certfile")
(PUNCT "=")
(ID "certfile")
(PUNCT ",")
(ID "keyfile")
(PUNCT "=")
(ID "keyfile")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "context")
(PUNCT "=")
(ID "context")
(NEWLINE)
(ID "POP3")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "host")
(PUNCT ",")
(ID "port")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_create_socket")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sock")
(PUNCT "=")
(ID "POP3")
(PUNCT ".")
(ID "_create_socket")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "timeout")
(PUNCT ")")
(NEWLINE)
(ID "sock")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "context")
(PUNCT ".")
(ID "wrap_socket")
(PUNCT "(")
(ID "sock")
(PUNCT ",")
(ID "server_hostname")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "host")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "sock")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "stls")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "keyfile")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "certfile")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "context")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "The method unconditionally raises an exception since the\n            STLS command doesn't make any sense on an already established\n            SSL/TLS session.\n            ")
(NEWLINE)
(KEYWORD raise)
(ID "error_proto")
(PUNCT "(")
(LIT "-ERR TLS session already established")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "__all__")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "POP3_SSL")
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
(KEYWORD import)
(ID "sys")
(NEWLINE)
(ID "a")
(PUNCT "=")
(ID "POP3")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "a")
(PUNCT ".")
(ID "getwelcome")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "a")
(PUNCT ".")
(ID "user")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "a")
(PUNCT ".")
(ID "pass_")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 3)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "a")
(PUNCT ".")
(ID "list")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(PUNCT "(")
(ID "numMsgs")
(PUNCT ",")
(ID "totalSize")
(PUNCT ")")
(PUNCT "=")
(ID "a")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(ID "numMsgs")
(PUNCT "+")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "header")
(PUNCT ",")
(ID "msg")
(PUNCT ",")
(ID "octets")
(PUNCT ")")
(PUNCT "=")
(ID "a")
(PUNCT ".")
(ID "retr")
(PUNCT "(")
(ID "i")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "Message %d:")
(PUNCT "%")
(ID "i")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "   ")
(PUNCT "+")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "print")
(PUNCT "(")
(LIT "-----------------------")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "a")
(PUNCT ".")
(ID "quit")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)