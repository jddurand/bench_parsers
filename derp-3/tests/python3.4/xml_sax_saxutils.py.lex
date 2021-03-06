(LIT "A library of useful helper classes to the SAX classes, for the\nconvenience of application and driver writers.\n")
(NEWLINE)
(KEYWORD import)
(ID "os")
(PUNCT ",")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ",")
(ID "urllib")
(PUNCT ".")
(ID "request")
(NEWLINE)
(KEYWORD import)
(ID "io")
(NEWLINE)
(KEYWORD import)
(ID "codecs")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "handler")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(KEYWORD import)
(ID "xmlreader")
(NEWLINE)
(KEYWORD def)
(ID "__dict_replace")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(ID "d")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Replace substrings of a string using a dictionary.")
(NEWLINE)
(KEYWORD for)
(ID "key")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "d")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "s")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(ID "key")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "s")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "escape")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Escape &, <, and > in a string of data.\n\n    You can escape other strings of data by passing a dictionary as\n    the optional entities parameter.  The keys and values must all be\n    strings; each key will be replaced with its corresponding value.\n    ")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "&")
(PUNCT ",")
(LIT "&amp;")
(PUNCT ")")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT ">")
(PUNCT ",")
(LIT "&gt;")
(PUNCT ")")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "<")
(PUNCT ",")
(LIT "&lt;")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "entities")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "__dict_replace")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "unescape")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Unescape &amp;, &lt;, and &gt; in a string of data.\n\n    You can unescape other strings of data by passing a dictionary as\n    the optional entities parameter.  The keys and values must all be\n    strings; each key will be replaced with its corresponding value.\n    ")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "&lt;")
(PUNCT ",")
(LIT "<")
(PUNCT ")")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "&gt;")
(PUNCT ",")
(LIT ">")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "entities")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "__dict_replace")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "&amp;")
(PUNCT ",")
(LIT "&")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "quoteattr")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Escape and quote an attribute value.\n\n    Escape &, <, and > in a string of data, then quote it for use as\n    an attribute value.  The \" character will be escaped as well, if\n    necessary.\n\n    You can escape other strings of data by passing a dictionary as\n    the optional entities parameter.  The keys and values must all be\n    strings; each key will be replaced with its corresponding value.\n    ")
(NEWLINE)
(ID "entities")
(PUNCT "=")
(ID "entities")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "entities")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(PUNCT "{")
(LIT "\n")
(PUNCT ":")
(LIT "&#10;")
(PUNCT ",")
(LIT "\r")
(PUNCT ":")
(LIT "&#13;")
(PUNCT ",")
(LIT "\t")
(PUNCT ":")
(LIT "&#9;")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "escape")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "entities")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT "\"")
(KEYWORD in)
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "'")
(KEYWORD in)
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(LIT "\"%s\"")
(PUNCT "%")
(ID "data")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "\"")
(PUNCT ",")
(LIT "&quot;")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(LIT "'%s'")
(PUNCT "%")
(ID "data")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(LIT "\"%s\"")
(PUNCT "%")
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_gettextwriter")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(ID "encoding")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "out")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD return)
(ID "sys")
(PUNCT ".")
(ID "stdout")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(ID "io")
(PUNCT ".")
(ID "TextIOBase")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "out")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "StreamWriter")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamReaderWriter")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "out")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(ID "io")
(PUNCT ".")
(ID "RawIOBase")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD class)
(ID "_wrapper")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "__class__")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "__class__")
(NEWLINE)
(KEYWORD def)
(ID "__getattr__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "getattr")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "buffer")
(PUNCT "=")
(ID "_wrapper")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "buffer")
(PUNCT ".")
(ID "close")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "buffer")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "BufferedIOBase")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "buffer")
(PUNCT ".")
(ID "writable")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(KEYWORD True)
(NEWLINE)
(ID "buffer")
(PUNCT ".")
(ID "write")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "write")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "buffer")
(PUNCT ".")
(ID "seekable")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "seekable")
(NEWLINE)
(ID "buffer")
(PUNCT ".")
(ID "tell")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "tell")
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
(DEDENT)
(KEYWORD return)
(ID "io")
(PUNCT ".")
(ID "TextIOWrapper")
(PUNCT "(")
(ID "buffer")
(PUNCT ",")
(ID "encoding")
(PUNCT "=")
(ID "encoding")
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(LIT "xmlcharrefreplace")
(PUNCT ",")
(ID "newline")
(PUNCT "=")
(LIT "\n")
(PUNCT ",")
(ID "write_through")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "XMLGenerator")
(PUNCT "(")
(ID "handler")
(PUNCT ".")
(ID "ContentHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "out")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "encoding")
(PUNCT "=")
(LIT "iso-8859-1")
(PUNCT ",")
(ID "short_empty_elements")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "handler")
(PUNCT ".")
(ID "ContentHandler")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "out")
(PUNCT "=")
(ID "_gettextwriter")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(ID "encoding")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "write")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "=")
(ID "out")
(PUNCT ".")
(ID "flush")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_ns_contexts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "{")
(PUNCT "}")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_current_context")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_ns_contexts")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_undeclared_ns_maps")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_encoding")
(PUNCT "=")
(ID "encoding")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_short_empty_elements")
(PUNCT "=")
(ID "short_empty_elements")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_qname")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Builds a qualified name from a (ns_url, localname) pair")
(NEWLINE)
(KEYWORD if)
(ID "name")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "http://www.w3.org/XML/1998/namespace")
(PUNCT "==")
(ID "name")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "xml:")
(PUNCT "+")
(ID "name")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "prefix")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_current_context")
(PUNCT "[")
(ID "name")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "prefix")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "prefix")
(PUNCT "+")
(LIT ":")
(PUNCT "+")
(ID "name")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "name")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_finish_pending_start_element")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "endElement")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT ">")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "startDocument")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "<?xml version=\"1.0\" encoding=\"%s\"?>\n")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "_encoding")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endDocument")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startPrefixMapping")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "prefix")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_ns_contexts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_current_context")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_current_context")
(PUNCT "[")
(ID "uri")
(PUNCT "]")
(PUNCT "=")
(ID "prefix")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_undeclared_ns_maps")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "prefix")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endPrefixMapping")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "prefix")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_current_context")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_ns_contexts")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "_ns_contexts")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startElement")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_finish_pending_start_element")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "<")
(PUNCT "+")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(KEYWORD in)
(ID "attrs")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT " %s=%s")
(PUNCT "%")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "quoteattr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_short_empty_elements")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT ">")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "endElement")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "/>")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "</%s>")
(PUNCT "%")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "startElementNS")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_finish_pending_start_element")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "<")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_qname")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "prefix")
(PUNCT ",")
(ID "uri")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_undeclared_ns_maps")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "prefix")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT " xmlns:%s=\"%s\"")
(PUNCT "%")
(PUNCT "(")
(ID "prefix")
(PUNCT ",")
(ID "uri")
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
(ID "_write")
(PUNCT "(")
(LIT " xmlns=\"%s\"")
(PUNCT "%")
(ID "uri")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_undeclared_ns_maps")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(KEYWORD in)
(ID "attrs")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT " %s=%s")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_qname")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "quoteattr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_short_empty_elements")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT ">")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "endElementNS")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "/>")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pending_start_element")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "</%s>")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "_qname")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "characters")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "content")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "content")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_finish_pending_start_element")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "content")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "content")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "content")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_encoding")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "escape")
(PUNCT "(")
(ID "content")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "ignorableWhitespace")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "content")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "content")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_finish_pending_start_element")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "content")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "content")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "content")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_encoding")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "content")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "processingInstruction")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "target")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_finish_pending_start_element")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(LIT "<?%s %s?>")
(PUNCT "%")
(PUNCT "(")
(ID "target")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "XMLFilterBase")
(PUNCT "(")
(ID "xmlreader")
(PUNCT ".")
(ID "XMLReader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "This class is designed to sit between an XMLReader and the\n    client application's event handlers.  By default, it does nothing\n    but pass requests up to the reader and events on to the handlers\n    unmodified, but subclasses can override specific methods to modify\n    the event stream or the configuration requests as they pass\n    through.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "parent")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "xmlreader")
(PUNCT ".")
(ID "XMLReader")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT "=")
(ID "parent")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "error")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_err_handler")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(ID "exception")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "fatalError")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_err_handler")
(PUNCT ".")
(ID "fatalError")
(PUNCT "(")
(ID "exception")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "warning")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_err_handler")
(PUNCT ".")
(ID "warning")
(PUNCT "(")
(ID "exception")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setDocumentLocator")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "locator")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "setDocumentLocator")
(PUNCT "(")
(ID "locator")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startDocument")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "startDocument")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endDocument")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "endDocument")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startPrefixMapping")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "prefix")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "startPrefixMapping")
(PUNCT "(")
(ID "prefix")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endPrefixMapping")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "prefix")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "endPrefixMapping")
(PUNCT "(")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startElement")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "startElement")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endElement")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "endElement")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startElementNS")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "startElementNS")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ",")
(ID "attrs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "endElementNS")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "endElementNS")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "qname")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "characters")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "content")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "characters")
(PUNCT "(")
(ID "content")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "ignorableWhitespace")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "chars")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "ignorableWhitespace")
(PUNCT "(")
(ID "chars")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "processingInstruction")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "target")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "processingInstruction")
(PUNCT "(")
(ID "target")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "skippedEntity")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_cont_handler")
(PUNCT ".")
(ID "skippedEntity")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "notationDecl")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_dtd_handler")
(PUNCT ".")
(ID "notationDecl")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "unparsedEntityDecl")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ",")
(ID "ndata")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_dtd_handler")
(PUNCT ".")
(ID "unparsedEntityDecl")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ",")
(ID "ndata")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "resolveEntity")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_ent_handler")
(PUNCT ".")
(ID "resolveEntity")
(PUNCT "(")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setContentHandler")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setErrorHandler")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setEntityResolver")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setDTDHandler")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setLocale")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "locale")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setLocale")
(PUNCT "(")
(ID "locale")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "getFeature")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setFeature")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getProperty")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "getProperty")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setProperty")
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
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT ".")
(ID "setProperty")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getParent")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_parent")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setParent")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "parent")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_parent")
(PUNCT "=")
(ID "parent")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "prepare_input_source")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "base")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "This function takes an InputSource and an optional base URL and\n    returns a fully resolved InputSource object ready for reading.")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(ID "xmlreader")
(PUNCT ".")
(ID "InputSource")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "hasattr")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(LIT "read")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT "=")
(ID "source")
(NEWLINE)
(ID "source")
(PUNCT "=")
(ID "xmlreader")
(PUNCT ".")
(ID "InputSource")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "setByteStream")
(PUNCT "(")
(ID "f")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "f")
(PUNCT ",")
(LIT "name")
(PUNCT ")")
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT ".")
(ID "setSystemId")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "source")
(PUNCT ".")
(ID "getByteStream")
(PUNCT "(")
(PUNCT ")")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "sysid")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "getSystemId")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "basehead")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normpath")
(PUNCT "(")
(ID "base")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "sysidfilename")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "basehead")
(PUNCT ",")
(ID "sysid")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isfile")
(PUNCT "(")
(ID "sysidfilename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT ".")
(ID "setSystemId")
(PUNCT "(")
(ID "sysidfilename")
(PUNCT ")")
(NEWLINE)
(ID "f")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "sysidfilename")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT ".")
(ID "setSystemId")
(PUNCT "(")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urljoin")
(PUNCT "(")
(ID "base")
(PUNCT ",")
(ID "sysid")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "f")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "request")
(PUNCT ".")
(ID "urlopen")
(PUNCT "(")
(ID "source")
(PUNCT ".")
(ID "getSystemId")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "source")
(PUNCT ".")
(ID "setByteStream")
(PUNCT "(")
(ID "f")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "source")
(NEWLINE)
(DEDENT)
(ENDMARKER)
