(LIT "FeedParser - An email feed parser.\n\nThe feed parser implements an interface for incrementally parsing an email\nmessage, line by line.  This has advantages for certain applications, such as\nthose reading email messages off a socket.\n\nFeedParser.feed() is the primary interface for pushing new data into the\nparser.  It returns when there's nothing more it can do with the available\ndata.  When you have no more data to push into the parser, call .close().\nThis completes the parsing and returns the root message object.\n\nThe other advantage of this parser is that it will never raise a parsing\nexception.  Instead, when it finds something unexpected, it adds a 'defect' to\nthe current message.  Defects are just instances that live on the message\nobject's .defects attribute.\n")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "FeedParser")
(PUNCT ",")
(LIT "BytesFeedParser")
(PUNCT "]")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(KEYWORD from)
(ID "email")
(KEYWORD import)
(ID "errors")
(NEWLINE)
(KEYWORD from)
(ID "email")
(KEYWORD import)
(ID "message")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "_policybase")
(KEYWORD import)
(ID "compat32")
(NEWLINE)
(ID "NLCRE")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "\r\n|\r|\n")
(PUNCT ")")
(NEWLINE)
(ID "NLCRE_bol")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "(\r\n|\r|\n)")
(PUNCT ")")
(NEWLINE)
(ID "NLCRE_eol")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "(\r\n|\r|\n)\\Z")
(PUNCT ")")
(NEWLINE)
(ID "NLCRE_crack")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "(\r\n|\r|\n)")
(PUNCT ")")
(NEWLINE)
(ID "headerRE")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "^(From |[\\041-\\071\\073-\\176]*:|[\\t ])")
(PUNCT ")")
(NEWLINE)
(ID "EMPTYSTRING")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "NL")
(PUNCT "=")
(LIT "\n")
(NEWLINE)
(ID "NeedMoreData")
(PUNCT "=")
(ID "object")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "BufferedSubFile")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A file-ish object that can have new data loaded into it.\n\n    You can also push and pop line-matching predicates onto a stack.  When the\n    current predicate matches the current line, a false EOF response\n    (i.e. empty string) is returned instead.  This lets the parser adhere to a\n    simple abstraction -- it parses until EOF closes the current message.\n    ")
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
(ID "_partial")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_eofstack")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_closed")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "push_eof_matcher")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "pred")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_eofstack")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "pred")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pop_eof_matcher")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_eofstack")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
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
(ID "self")
(PUNCT ".")
(ID "pushlines")
(PUNCT "(")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT ")")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_closed")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "readline")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_closed")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "NeedMoreData")
(NEWLINE)
(DEDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "ateof")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_eofstack")
(PUNCT "[")
(PUNCT ":")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "ateof")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "line")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "unreadline")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(ID "line")
(KEYWORD is)
(KEYWORD not)
(ID "NeedMoreData")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "push")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Push some new data into this object.")
(NEWLINE)
(ID "parts")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "parts")
(KEYWORD or)
(KEYWORD not)
(ID "parts")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(LIT "\r")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT "+=")
(ID "parts")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "parts")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "parts")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 1)
(PUNCT "]")
(PUNCT "=")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT ")")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "parts")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_partial")
(PUNCT "=")
(PUNCT "[")
(ID "parts")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "pushlines")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pushlines")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_lines")
(PUNCT "[")
(PUNCT ":")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "lines")
(PUNCT "[")
(PUNCT ":")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__iter__")
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
(ID "__next__")
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
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "StopIteration")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "line")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "FeedParser")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A feed-style parser of email.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "_factory")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "policy")
(PUNCT "=")
(ID "compat32")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "_factory is called with no arguments to create a new message obj\n\n        The policy keyword specifies a policy object that controls a number of\n        aspects of the parser's operation.  The default policy maintains\n        backward compatibility.\n\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "=")
(ID "policy")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_factory_kwds")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(PUNCT "{")
(LIT "policy")
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(ID "_factory")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "policy")
(KEYWORD is)
(ID "compat32")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_factory")
(PUNCT "=")
(ID "message")
(PUNCT ".")
(ID "Message")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_factory")
(PUNCT "=")
(ID "message")
(PUNCT ".")
(ID "EmailMessage")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_factory")
(PUNCT "=")
(ID "_factory")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_factory")
(PUNCT "(")
(ID "policy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "TypeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_factory_kwds")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT "=")
(ID "BufferedSubFile")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parse")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_parsegen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "__next__")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_headersonly")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_headersonly")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_headersonly")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "feed")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Push more data into the parser.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "push")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_call_parse")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_call_parse")
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
(ID "self")
(PUNCT ".")
(ID "_parse")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "StopIteration")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "close")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Parse all remaining data and return the root message object.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_call_parse")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pop_message")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(NEWLINE)
(KEYWORD if)
(ID "root")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "multipart")
(KEYWORD and)
(KEYWORD not)
(ID "root")
(PUNCT ".")
(ID "is_multipart")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "MultipartInvariantViolationDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "root")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_new_message")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_factory")
(PUNCT "(")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "_factory_kwds")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_cur")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get_content_type")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "multipart/digest")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT ".")
(ID "set_default_type")
(PUNCT "(")
(LIT "message/rfc822")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "attach")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT "=")
(ID "msg")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT "=")
(ID "msg")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_pop_message")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "retval")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_msgstack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "retval")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parsegen")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_new_message")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "headers")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "headerRE")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "NLCRE")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "MissingHeaderBodySeparatorDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "unreadline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "headers")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_parse_headers")
(PUNCT "(")
(ID "headers")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_headersonly")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_payload")
(PUNCT "(")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get_content_type")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "message/delivery-status")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "push_eof_matcher")
(PUNCT "(")
(ID "NLCRE")
(PUNCT ".")
(ID "match")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "retval")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_parsegen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "retval")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "msg")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pop_message")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "pop_eof_matcher")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "unreadline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "message")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "retval")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_parsegen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "retval")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_pop_message")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "multipart")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "boundary")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get_boundary")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "boundary")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "NoBoundaryInMultipartDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(ID "lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_payload")
(PUNCT "(")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "content-transfer-encoding")
(PUNCT ",")
(LIT "8bit")
(PUNCT ")")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(LIT "7bit")
(PUNCT ",")
(LIT "8bit")
(PUNCT ",")
(LIT "binary")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "InvalidMultipartContentTransferEncodingDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "separator")
(PUNCT "=")
(LIT "--")
(PUNCT "+")
(ID "boundary")
(NEWLINE)
(ID "boundaryre")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "(?P<sep>")
(PUNCT "+")
(ID "re")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "separator")
(PUNCT ")")
(PUNCT "+")
(LIT ")(?P<end>--)?(?P<ws>[ \\t]*)(?P<linesep>\\r\\n|\\r|\\n)?$")
(PUNCT ")")
(NEWLINE)
(ID "capturing_preamble")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "preamble")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "linesep")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "close_boundary_seen")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "mo")
(PUNCT "=")
(ID "boundaryre")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "mo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "end")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "close_boundary_seen")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "linesep")
(PUNCT "=")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT "linesep")
(PUNCT ")")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "capturing_preamble")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "preamble")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lastline")
(PUNCT "=")
(ID "preamble")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "eolmo")
(PUNCT "=")
(ID "NLCRE_eol")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "lastline")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "eolmo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "preamble")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "=")
(ID "lastline")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "eolmo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "preamble")
(PUNCT "=")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "preamble")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "capturing_preamble")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "unreadline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "mo")
(PUNCT "=")
(ID "boundaryre")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "mo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "unreadline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "push_eof_matcher")
(PUNCT "(")
(ID "boundaryre")
(PUNCT ".")
(ID "match")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "retval")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_parsegen")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "retval")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "get_content_maintype")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(LIT "multipart")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "epilogue")
(NEWLINE)
(KEYWORD if)
(ID "epilogue")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "epilogue")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "epilogue")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mo")
(PUNCT "=")
(ID "NLCRE_eol")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "epilogue")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "mo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "end")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "epilogue")
(PUNCT "=")
(ID "epilogue")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(ID "end")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "payload")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "_payload")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "payload")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mo")
(PUNCT "=")
(ID "NLCRE_eol")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "payload")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "mo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "payload")
(PUNCT "=")
(ID "payload")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT ".")
(ID "_payload")
(PUNCT "=")
(ID "payload")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "pop_eof_matcher")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pop_message")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_last")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_cur")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(ID "capturing_preamble")
(NEWLINE)
(ID "preamble")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "capturing_preamble")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "StartBoundaryNotFoundDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_payload")
(PUNCT "(")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "preamble")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "epilogue")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "epilogue")
(PUNCT "=")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "epilogue")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "close_boundary_seen")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "CloseBoundaryNotFoundDefect")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "linesep")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "=")
(PUNCT "[")
(LIT "")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "epilogue")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "epilogue")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "firstline")
(PUNCT "=")
(ID "epilogue")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "bolmo")
(PUNCT "=")
(ID "NLCRE_bol")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "firstline")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "bolmo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "epilogue")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "firstline")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "bolmo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "epilogue")
(PUNCT "=")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "epilogue")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(ID "NeedMoreData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD yield)
(ID "NeedMoreData")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_payload")
(PUNCT "(")
(ID "EMPTYSTRING")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parse_headers")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lastheader")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "lastvalue")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "lineno")
(PUNCT ",")
(ID "line")
(KEYWORD in)
(ID "enumerate")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(KEYWORD in)
(LIT " \t")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "lastheader")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "FirstHeaderLineIsContinuationDefect")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "lastvalue")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "lastheader")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_raw")
(PUNCT "(")
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "header_source_parse")
(PUNCT "(")
(ID "lastvalue")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "lastheader")
(PUNCT ",")
(ID "lastvalue")
(PUNCT "=")
(LIT "")
(PUNCT ",")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "From ")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "lineno")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mo")
(PUNCT "=")
(ID "NLCRE_eol")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "mo")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "mo")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_unixfrom")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "lineno")
(PUNCT "==")
(ID "len")
(PUNCT "(")
(ID "lines")
(PUNCT ")")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_input")
(PUNCT ".")
(ID "unreadline")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "MisplacedEnvelopeHeaderDefect")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "defects")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "i")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT ":")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "defect")
(PUNCT "=")
(ID "errors")
(PUNCT ".")
(ID "InvalidHeaderDefect")
(PUNCT "(")
(LIT "Missing header name.")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "defects")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD assert)
(ID "i")
(PUNCT ">")
(LIT 0)
(PUNCT ",")
(LIT "_parse_headers fed line with no : and no leading WS")
(NEWLINE)
(ID "lastheader")
(PUNCT "=")
(ID "line")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(NEWLINE)
(ID "lastvalue")
(PUNCT "=")
(PUNCT "[")
(ID "line")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "lastheader")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cur")
(PUNCT ".")
(ID "set_raw")
(PUNCT "(")
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "policy")
(PUNCT ".")
(ID "header_source_parse")
(PUNCT "(")
(ID "lastvalue")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "BytesFeedParser")
(PUNCT "(")
(ID "FeedParser")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Like FeedParser, but feed accepts bytes.")
(NEWLINE)
(KEYWORD def)
(ID "feed")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "feed")
(PUNCT "(")
(ID "data")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ",")
(LIT "surrogateescape")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
