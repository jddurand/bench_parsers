(KEYWORD import)
(ID "_codecs_jp")
(PUNCT ",")
(ID "codecs")
(NEWLINE)
(KEYWORD import)
(ID "_multibytecodec")
(KEYWORD as)
(ID "mbc")
(NEWLINE)
(ID "codec")
(PUNCT "=")
(ID "_codecs_jp")
(PUNCT ".")
(ID "getcodec")
(PUNCT "(")
(LIT "shift_jis_2004")
(PUNCT ")")
(NEWLINE)
(KEYWORD class)
(ID "Codec")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "Codec")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "encode")
(PUNCT "=")
(ID "codec")
(PUNCT ".")
(ID "encode")
(NEWLINE)
(ID "decode")
(PUNCT "=")
(ID "codec")
(PUNCT ".")
(ID "decode")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "IncrementalEncoder")
(PUNCT "(")
(ID "mbc")
(PUNCT ".")
(ID "MultibyteIncrementalEncoder")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalEncoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "codec")
(PUNCT "=")
(ID "codec")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "IncrementalDecoder")
(PUNCT "(")
(ID "mbc")
(PUNCT ".")
(ID "MultibyteIncrementalDecoder")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalDecoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "codec")
(PUNCT "=")
(ID "codec")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "StreamReader")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "mbc")
(PUNCT ".")
(ID "MultibyteStreamReader")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamReader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "codec")
(PUNCT "=")
(ID "codec")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "StreamWriter")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "mbc")
(PUNCT ".")
(ID "MultibyteStreamWriter")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamWriter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "codec")
(PUNCT "=")
(ID "codec")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getregentry")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "CodecInfo")
(PUNCT "(")
(ID "name")
(PUNCT "=")
(LIT "shift_jis_2004")
(PUNCT ",")
(ID "encode")
(PUNCT "=")
(ID "Codec")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT ",")
(ID "decode")
(PUNCT "=")
(ID "Codec")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT ",")
(ID "incrementalencoder")
(PUNCT "=")
(ID "IncrementalEncoder")
(PUNCT ",")
(ID "incrementaldecoder")
(PUNCT "=")
(ID "IncrementalDecoder")
(PUNCT ",")
(ID "streamreader")
(PUNCT "=")
(ID "StreamReader")
(PUNCT ",")
(ID "streamwriter")
(PUNCT "=")
(ID "StreamWriter")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
