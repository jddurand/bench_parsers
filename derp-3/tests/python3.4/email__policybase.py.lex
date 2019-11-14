(LIT "Policy framework for the email package.\n\nAllows fine grained feature control of how the package parses and emits data.\n")
(NEWLINE)
(KEYWORD import)
(ID "abc")
(NEWLINE)
(KEYWORD from)
(ID "email")
(KEYWORD import)
(ID "header")
(NEWLINE)
(KEYWORD from)
(ID "email")
(KEYWORD import)
(ID "charset")
(KEYWORD as)
(ID "_charset")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "utils")
(KEYWORD import)
(ID "_has_surrogates")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "Policy")
(PUNCT ",")
(LIT "Compat32")
(PUNCT ",")
(LIT "compat32")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "_PolicyBase")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Policy Object basic framework.\n\n    This class is useless unless subclassed.  A subclass should define\n    class attributes with defaults for any values that are to be\n    managed by the Policy object.  The constructor will then allow\n    non-default values to be set for these attributes at instance\n    creation time.  The instance will be callable, taking these same\n    attributes keyword arguments, and returning a new instance\n    identical to the called instance except for those values changed\n    by the keyword arguments.  Instances may be added, yielding new\n    instances with any non-default values from the right hand\n    operand overriding those in the left hand operand.  That is,\n\n        A + B == A(<non-default values of B>)\n\n    The repr of an instance can be used to reconstruct the object\n    if and only if the repr of the values can be used to reconstruct\n    those values.\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Create new Policy, possibly overriding some defaults.\n\n        See class docstring for a list of overridable attributes.\n\n        ")
(NEWLINE)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "kw")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "_PolicyBase")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "__setattr__")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "{!r} is an invalid keyword argument for {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
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
(ID "args")
(PUNCT "=")
(PUNCT "[")
(LIT "{}={!r}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "__dict__")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(LIT "{}({})")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ",")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "clone")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a new instance with specified attributes changed.\n\n        The new instance has the same attribute values as the current object,\n        except for the changes passed in as keyword arguments.\n\n        ")
(NEWLINE)
(ID "newpolicy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__new__")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "attr")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "__dict__")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "object")
(PUNCT ".")
(ID "__setattr__")
(PUNCT "(")
(ID "newpolicy")
(PUNCT ",")
(ID "attr")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "attr")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "kw")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "attr")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "{!r} is an invalid keyword argument for {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "attr")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "object")
(PUNCT ".")
(ID "__setattr__")
(PUNCT "(")
(ID "newpolicy")
(PUNCT ",")
(ID "attr")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "newpolicy")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__setattr__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "{!r} object attribute {!r} is read-only")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "{!r} object has no attribute {!r}")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "AttributeError")
(PUNCT "(")
(ID "msg")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__add__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Non-default values from right operand override those from left.\n\n        The object returned is a new instance of the subclass.\n\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT "**")
(ID "other")
(PUNCT ".")
(ID "__dict__")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_append_doc")
(PUNCT "(")
(ID "doc")
(PUNCT ",")
(ID "added_doc")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(ID "doc")
(PUNCT ".")
(ID "rsplit")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "added_doc")
(PUNCT "=")
(ID "added_doc")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "doc")
(PUNCT "+")
(LIT "\n")
(PUNCT "+")
(ID "added_doc")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_extend_docstrings")
(PUNCT "(")
(ID "cls")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "cls")
(PUNCT ".")
(ID "__doc__")
(KEYWORD and)
(ID "cls")
(PUNCT ".")
(ID "__doc__")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "+")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cls")
(PUNCT ".")
(ID "__doc__")
(PUNCT "=")
(ID "_append_doc")
(PUNCT "(")
(ID "cls")
(PUNCT ".")
(ID "__bases__")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "__doc__")
(PUNCT ",")
(ID "cls")
(PUNCT ".")
(ID "__doc__")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "attr")
(KEYWORD in)
(ID "cls")
(PUNCT ".")
(ID "__dict__")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "attr")
(PUNCT ".")
(ID "__doc__")
(KEYWORD and)
(ID "attr")
(PUNCT ".")
(ID "__doc__")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "+")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "c")
(KEYWORD in)
(PUNCT "(")
(ID "c")
(KEYWORD for)
(ID "base")
(KEYWORD in)
(ID "cls")
(PUNCT ".")
(ID "__bases__")
(KEYWORD for)
(ID "c")
(KEYWORD in)
(ID "base")
(PUNCT ".")
(ID "mro")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "getattr")
(PUNCT "(")
(ID "c")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(LIT "__doc__")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "doc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "attr")
(PUNCT ".")
(ID "__doc__")
(PUNCT "=")
(ID "_append_doc")
(PUNCT "(")
(ID "doc")
(PUNCT ",")
(ID "attr")
(PUNCT ".")
(ID "__doc__")
(PUNCT ")")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "cls")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Policy")
(PUNCT "(")
(ID "_PolicyBase")
(PUNCT ",")
(ID "metaclass")
(PUNCT "=")
(ID "abc")
(PUNCT ".")
(ID "ABCMeta")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Controls for how messages are interpreted and formatted.\n\n    Most of the classes and many of the methods in the email package accept\n    Policy objects as parameters.  A Policy object contains a set of values and\n    functions that control how input is interpreted and how output is rendered.\n    For example, the parameter 'raise_on_defect' controls whether or not an RFC\n    violation results in an error being raised or not, while 'max_line_length'\n    controls the maximum length of output lines when a Message is serialized.\n\n    Any valid attribute may be overridden when a Policy is created by passing\n    it as a keyword argument to the constructor.  Policy objects are immutable,\n    but a new Policy object can be created with only certain values changed by\n    calling the Policy instance with keyword arguments.  Policy objects can\n    also be added, producing a new Policy object in which the non-default\n    attributes set in the right hand operand overwrite those specified in the\n    left operand.\n\n    Settable attributes:\n\n    raise_on_defect     -- If true, then defects should be raised as errors.\n                           Default: False.\n\n    linesep             -- string containing the value to use as separation\n                           between output lines.  Default '\\n'.\n\n    cte_type            -- Type of allowed content transfer encodings\n\n                           7bit  -- ASCII only\n                           8bit  -- Content-Transfer-Encoding: 8bit is allowed\n\n                           Default: 8bit.  Also controls the disposition of\n                           (RFC invalid) binary data in headers; see the\n                           documentation of the binary_fold method.\n\n    max_line_length     -- maximum length of lines, excluding 'linesep',\n                           during serialization.  None or 0 means no line\n                           wrapping is done.  Default is 78.\n\n    ")
(NEWLINE)
(ID "raise_on_defect")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "linesep")
(PUNCT "=")
(LIT "\n")
(NEWLINE)
(ID "cte_type")
(PUNCT "=")
(LIT "8bit")
(NEWLINE)
(ID "max_line_length")
(PUNCT "=")
(LIT 78)
(NEWLINE)
(KEYWORD def)
(ID "handle_defect")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "obj")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Based on policy, either raise defect or call register_defect.\n\n            handle_defect(obj, defect)\n\n        defect should be a Defect subclass, but in any case must be an\n        Exception subclass.  obj is the object on which the defect should be\n        registered if it is not raised.  If the raise_on_defect is True, the\n        defect is raised as an error, otherwise the object and the defect are\n        passed to register_defect.\n\n        This method is intended to be called by parsers that discover defects.\n        The email package parsers always call it with Defect instances.\n\n        ")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "raise_on_defect")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "defect")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "register_defect")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "register_defect")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "obj")
(PUNCT ",")
(ID "defect")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Record 'defect' on 'obj'.\n\n        Called by handle_defect if raise_on_defect is False.  This method is\n        part of the Policy API so that Policy subclasses can implement custom\n        defect handling.  The default implementation calls the append method of\n        the defects attribute of obj.  The objects used by the email package by\n        default that get passed to this method will always have a defects\n        attribute with an append method.\n\n        ")
(NEWLINE)
(ID "obj")
(PUNCT ".")
(ID "defects")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "defect")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "header_max_count")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the maximum allowed number of headers named 'name'.\n\n        Called when a header is added to a Message object.  If the returned\n        value is not 0 or None, and there are already a number of headers with\n        the name 'name' equal to the value returned, a ValueError is raised.\n\n        Because the default behavior of Message's __setitem__ is to append the\n        value to the list of headers, it is easy to create duplicate headers\n        without realizing it.  This method allows certain headers to be limited\n        in the number of instances of that header that may be added to a\n        Message programmatically.  (The limit is not observed by the parser,\n        which will faithfully produce as many headers as exist in the message\n        being parsed.)\n\n        The default implementation returns None for all header names.\n        ")
(NEWLINE)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "abc")
(PUNCT ".")
(ID "abstractmethod")
(NEWLINE)
(KEYWORD def)
(ID "header_source_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "sourcelines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given a list of linesep terminated strings constituting the lines of\n        a single header, return the (name, value) tuple that should be stored\n        in the model.  The input lines should retain their terminating linesep\n        characters.  The lines passed in by the email package may contain\n        surrogateescaped binary data.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "abc")
(PUNCT ".")
(ID "abstractmethod")
(NEWLINE)
(KEYWORD def)
(ID "header_store_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given the header name and the value provided by the application\n        program, return the (name, value) that should be stored in the model.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "abc")
(PUNCT ".")
(ID "abstractmethod")
(NEWLINE)
(KEYWORD def)
(ID "header_fetch_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given the header name and the value from the model, return the value\n        to be returned to the application program that is requesting that\n        header.  The value passed in by the email package may contain\n        surrogateescaped binary data if the lines were parsed by a BytesParser.\n        The returned value should not contain any surrogateescaped data.\n\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "abc")
(PUNCT ".")
(ID "abstractmethod")
(NEWLINE)
(KEYWORD def)
(ID "fold")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given the header name and the value from the model, return a string\n        containing linesep characters that implement the folding of the header\n        according to the policy controls.  The value passed in by the email\n        package may contain surrogateescaped binary data if the lines were\n        parsed by a BytesParser.  The returned value should not contain any\n        surrogateescaped data.\n\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "abc")
(PUNCT ".")
(ID "abstractmethod")
(NEWLINE)
(KEYWORD def)
(ID "fold_binary")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given the header name and the value from the model, return binary\n        data containing linesep characters that implement the folding of the\n        header according to the policy controls.  The value passed in by the\n        email package may contain surrogateescaped binary data.\n\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(PUNCT "@")
(ID "_extend_docstrings")
(NEWLINE)
(KEYWORD class)
(ID "Compat32")
(PUNCT "(")
(ID "Policy")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n    This particular policy is the backward compatibility Policy.  It\n    replicates the behavior of the email package version 5.1.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "_sanitize_header")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "_has_surrogates")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "header")
(PUNCT ".")
(ID "Header")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "charset")
(PUNCT "=")
(ID "_charset")
(PUNCT ".")
(ID "UNKNOWN8BIT")
(PUNCT ",")
(ID "header_name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "value")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "header_source_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "sourcelines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n        The name is parsed as everything up to the ':' and returned unmodified.\n        The value is determined by stripping leading whitespace off the\n        remainder of the first line, joining all subsequent lines together, and\n        stripping any trailing carriage return or linefeed characters.\n\n        ")
(NEWLINE)
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT "=")
(ID "sourcelines")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ":")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "value")
(PUNCT "=")
(ID "value")
(PUNCT ".")
(ID "lstrip")
(PUNCT "(")
(LIT " \t")
(PUNCT ")")
(PUNCT "+")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "sourcelines")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ".")
(ID "rstrip")
(PUNCT "(")
(LIT "\r\n")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "header_store_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n        The name and value are returned unmodified.\n        ")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "header_fetch_parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n        If the value contains binary data, it is converted into a Header object\n        using the unknown-8bit charset.  Otherwise it is returned unmodified.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_sanitize_header")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "fold")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n        Headers are folded using the Header folding algorithm, which preserves\n        existing line breaks in the value, and wraps each resulting line to the\n        max_line_length.  Non-ASCII binary data are CTE encoded using the\n        unknown-8bit charset.\n\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_fold")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "sanitize")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "fold_binary")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "+\n        Headers are folded using the Header folding algorithm, which preserves\n        existing line breaks in the value, and wraps each resulting line to the\n        max_line_length.  If cte_type is 7bit, non-ascii binary data is CTE\n        encoded using the unknown-8bit charset.  Otherwise the original source\n        header is used, with its existing line breaks and/or binary data.\n\n        ")
(NEWLINE)
(ID "folded")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fold")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "sanitize")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "cte_type")
(PUNCT "==")
(LIT "7bit")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "folded")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "ascii")
(PUNCT ",")
(LIT "surrogateescape")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_fold")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "sanitize")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "%s: ")
(PUNCT "%")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "_has_surrogates")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "sanitize")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "header")
(PUNCT ".")
(ID "Header")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "charset")
(PUNCT "=")
(ID "_charset")
(PUNCT ".")
(ID "UNKNOWN8BIT")
(PUNCT ",")
(ID "header_name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(ID "h")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "header")
(PUNCT ".")
(ID "Header")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "header_name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "h")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "h")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(ID "linesep")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "linesep")
(PUNCT ",")
(ID "maxlinelen")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "max_line_length")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "linesep")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "compat32")
(PUNCT "=")
(ID "Compat32")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ENDMARKER)