(LIT "Macintosh binhex compression/decompression.\n\neasy interface:\nbinhex(inputfilename, outputfilename)\nhexbin(inputfilename, outputfilename)\n")
(NEWLINE)
(KEYWORD import)
(ID "io")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "struct")
(NEWLINE)
(KEYWORD import)
(ID "binascii")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "binhex")
(PUNCT ",")
(LIT "hexbin")
(PUNCT ",")
(LIT "Error")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "Error")
(PUNCT "(")
(ID "Exception")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(PUNCT "[")
(ID "_DID_HEADER")
(PUNCT ",")
(ID "_DID_DATA")
(PUNCT ",")
(ID "_DID_RSRC")
(PUNCT "]")
(PUNCT "=")
(ID "range")
(PUNCT "(")
(LIT 3)
(PUNCT ")")
(NEWLINE)
(ID "REASONABLY_LARGE")
(PUNCT "=")
(LIT 32768)
(NEWLINE)
(ID "LINELEN")
(PUNCT "=")
(LIT 64)
(NEWLINE)
(ID "RUNCHAR")
(PUNCT "=")
(LIT #"\220")
(NEWLINE)
(KEYWORD class)
(ID "FInfo")
(PUNCT ":")
(NEWLINE)
(INDENT)
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
(ID "Type")
(PUNCT "=")
(LIT "????")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "Creator")
(PUNCT "=")
(LIT "????")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "Flags")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "getfileinfo")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "finfo")
(PUNCT "=")
(ID "FInfo")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD with)
(ID "io")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "fp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "fp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 512)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT 0)
(KEYWORD not)
(KEYWORD in)
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "finfo")
(PUNCT ".")
(ID "Type")
(PUNCT "=")
(LIT "TEXT")
(NEWLINE)
(DEDENT)
(ID "fp")
(PUNCT ".")
(ID "seek")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "dsize")
(PUNCT "=")
(ID "fp")
(PUNCT ".")
(ID "tell")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "dir")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(ID "file")
(PUNCT "=")
(ID "file")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT ":")
(PUNCT ",")
(LIT "-")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "file")
(PUNCT ",")
(ID "finfo")
(PUNCT ",")
(ID "dsize")
(PUNCT ",")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "openrsrc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
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
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_Hqxcoderengine")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Write data to the coder in 3-byte chunks")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "ofp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT "=")
(ID "ofp")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "linelen")
(PUNCT "=")
(ID "LINELEN")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "+")
(ID "data")
(NEWLINE)
(ID "datalen")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "todo")
(PUNCT "=")
(PUNCT "(")
(ID "datalen")
(PUNCT "//")
(LIT 3)
(PUNCT ")")
(PUNCT "*")
(LIT 3)
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "[")
(PUNCT ":")
(ID "todo")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "[")
(ID "todo")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "+")
(ID "binascii")
(PUNCT ".")
(ID "b2a_hqx")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_flush")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "force")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "first")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD while)
(ID "first")
(PUNCT "<=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT ")")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "linelen")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "last")
(PUNCT "=")
(ID "first")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "linelen")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "[")
(ID "first")
(PUNCT ":")
(ID "last")
(PUNCT "]")
(PUNCT "+")
(LIT #"\n")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "linelen")
(PUNCT "=")
(ID "LINELEN")
(NEWLINE)
(ID "first")
(PUNCT "=")
(ID "last")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "[")
(ID "first")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "force")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "+")
(LIT #":\n")
(PUNCT ")")
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
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "hqxdata")
(PUNCT "+")
(ID "binascii")
(PUNCT ".")
(ID "b2a_hqx")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "ofp")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_Rlecoderengine")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Write data to the RLE-coder in suitably large chunks")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "ofp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT "=")
(ID "ofp")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "+")
(ID "data")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ")")
(PUNCT "<")
(ID "REASONABLY_LARGE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "rledata")
(PUNCT "=")
(ID "binascii")
(PUNCT ".")
(ID "rlecode_hqx")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "rledata")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT "=")
(LIT #"")
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
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rledata")
(PUNCT "=")
(ID "binascii")
(PUNCT ".")
(ID "rlecode_hqx")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "rledata")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "ofp")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "BinHex")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name_finfo_dlen_rlen")
(PUNCT ",")
(ID "ofp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "finfo")
(PUNCT ",")
(ID "dlen")
(PUNCT ",")
(ID "rlen")
(PUNCT "=")
(ID "name_finfo_dlen_rlen")
(NEWLINE)
(ID "close_on_error")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "ofp")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ofname")
(PUNCT "=")
(ID "ofp")
(NEWLINE)
(ID "ofp")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "ofname")
(PUNCT ",")
(LIT "wb")
(PUNCT ")")
(NEWLINE)
(ID "close_on_error")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT #"(This file must be converted with BinHex 4.0)\r\r:")
(PUNCT ")")
(NEWLINE)
(ID "hqxer")
(PUNCT "=")
(ID "_Hqxcoderengine")
(PUNCT "(")
(ID "ofp")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT "=")
(ID "_Rlecoderengine")
(PUNCT "(")
(ID "hqxer")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD if)
(ID "finfo")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "finfo")
(PUNCT "=")
(ID "FInfo")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "=")
(ID "dlen")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "=")
(ID "rlen")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_writeinfo")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "finfo")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(ID "_DID_HEADER")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "close_on_error")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_writeinfo")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "finfo")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "nl")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "nl")
(PUNCT ">")
(LIT 63)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Filename too long")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "d")
(PUNCT "=")
(ID "bytes")
(PUNCT "(")
(PUNCT "[")
(ID "nl")
(PUNCT "]")
(PUNCT ")")
(PUNCT "+")
(ID "name")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "latin-1")
(PUNCT ")")
(PUNCT "+")
(LIT #"\0")
(NEWLINE)
(ID "tp")
(PUNCT ",")
(ID "cr")
(PUNCT "=")
(ID "finfo")
(PUNCT ".")
(ID "Type")
(PUNCT ",")
(ID "finfo")
(PUNCT ".")
(ID "Creator")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "tp")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tp")
(PUNCT "=")
(ID "tp")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "latin-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "cr")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cr")
(PUNCT "=")
(ID "cr")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "latin-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "d2")
(PUNCT "=")
(ID "tp")
(PUNCT "+")
(ID "cr")
(NEWLINE)
(ID "d3")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(LIT ">h")
(PUNCT ",")
(ID "finfo")
(PUNCT ".")
(ID "Flags")
(PUNCT ")")
(NEWLINE)
(ID "d4")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(LIT ">ii")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ")")
(NEWLINE)
(ID "info")
(PUNCT "=")
(ID "d")
(PUNCT "+")
(ID "d2")
(PUNCT "+")
(ID "d3")
(PUNCT "+")
(ID "d4")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "info")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_writecrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(ID "binascii")
(PUNCT ".")
(ID "crc_hqx")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_writecrc")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fmt")
(PUNCT "=")
(LIT ">h")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fmt")
(PUNCT "=")
(LIT ">H")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "struct")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "fmt")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_HEADER")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Writing data at the wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "close_data")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "!=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Incorrect data size, diff=%r")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_writecrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(ID "_DID_DATA")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write_rsrc")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "<")
(ID "_DID_DATA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "close_data")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_DATA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Writing resource data at the wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "data")
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
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "<")
(ID "_DID_DATA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "close_data")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_DATA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Close at the wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "!=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Incorrect resource-datasize, diff=%r")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_writecrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT ".")
(ID "ofp")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "binhex")
(PUNCT "(")
(ID "inp")
(PUNCT ",")
(ID "out")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "binhex(infilename, outfilename): create binhex-encoded copy of a file")
(NEWLINE)
(ID "finfo")
(PUNCT "=")
(ID "getfileinfo")
(PUNCT "(")
(ID "inp")
(PUNCT ")")
(NEWLINE)
(ID "ofp")
(PUNCT "=")
(ID "BinHex")
(PUNCT "(")
(ID "finfo")
(PUNCT ",")
(ID "out")
(PUNCT ")")
(NEWLINE)
(ID "ifp")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "inp")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 128000)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "d")
(PUNCT ":")
(KEYWORD break)
(NEWLINE)
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "d")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ofp")
(PUNCT ".")
(ID "close_data")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "ifp")
(PUNCT "=")
(ID "openrsrc")
(PUNCT "(")
(ID "inp")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 128000)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "d")
(PUNCT ":")
(KEYWORD break)
(NEWLINE)
(ID "ofp")
(PUNCT ".")
(ID "write_rsrc")
(PUNCT "(")
(ID "d")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "_Hqxdecoderengine")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read data via the decoder in 4-byte chunks")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "ifp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT "=")
(ID "ifp")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "eof")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "totalwtd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read at least wtd bytes (or until EOF)")
(NEWLINE)
(ID "decdata")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "wtd")
(PUNCT "=")
(ID "totalwtd")
(NEWLINE)
(KEYWORD while)
(ID "wtd")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(KEYWORD return)
(ID "decdata")
(NEWLINE)
(ID "wtd")
(PUNCT "=")
(PUNCT "(")
(PUNCT "(")
(ID "wtd")
(PUNCT "+")
(LIT 2)
(PUNCT ")")
(PUNCT "//")
(LIT 3)
(PUNCT ")")
(PUNCT "*")
(LIT 4)
(NEWLINE)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(ID "wtd")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "decdatacur")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "eof")
(PUNCT "=")
(ID "binascii")
(PUNCT ".")
(ID "a2b_hqx")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "binascii")
(PUNCT ".")
(ID "Incomplete")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(ID "newdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "newdata")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Premature EOF on binhex file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "data")
(PUNCT "=")
(ID "data")
(PUNCT "+")
(ID "newdata")
(NEWLINE)
(DEDENT)
(ID "decdata")
(PUNCT "=")
(ID "decdata")
(PUNCT "+")
(ID "decdatacur")
(NEWLINE)
(ID "wtd")
(PUNCT "=")
(ID "totalwtd")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "decdata")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "decdata")
(KEYWORD and)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Premature EOF on binhex file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "decdata")
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
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_Rledecoderengine")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read data via the RLE-coder")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "ifp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT "=")
(ID "ifp")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "eof")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "wtd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "wtd")
(PUNCT ">")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fill")
(PUNCT "(")
(ID "wtd")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "rv")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "[")
(PUNCT ":")
(ID "wtd")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "[")
(ID "wtd")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "rv")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_fill")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "wtd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(ID "wtd")
(PUNCT "+")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "+")
(ID "binascii")
(PUNCT ".")
(ID "rledecode_hqx")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "mark")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(PUNCT "-")
(LIT 3)
(PUNCT ":")
(PUNCT "]")
(PUNCT "==")
(ID "RUNCHAR")
(PUNCT "+")
(LIT #"\0")
(PUNCT "+")
(ID "RUNCHAR")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mark")
(PUNCT "=")
(ID "mark")
(PUNCT "-")
(LIT 3)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT "==")
(ID "RUNCHAR")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mark")
(PUNCT "=")
(ID "mark")
(PUNCT "-")
(LIT 2)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(PUNCT "-")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(PUNCT "==")
(ID "RUNCHAR")
(PUNCT "+")
(LIT #"\0")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mark")
(PUNCT "=")
(ID "mark")
(PUNCT "-")
(LIT 2)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(PUNCT "-")
(LIT 2)
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(ID "RUNCHAR")
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
(ID "mark")
(PUNCT "=")
(ID "mark")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "post_buffer")
(PUNCT "+")
(ID "binascii")
(PUNCT ".")
(ID "rledecode_hqx")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(PUNCT ":")
(ID "mark")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "pre_buffer")
(PUNCT "[")
(ID "mark")
(PUNCT ":")
(PUNCT "]")
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
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "HexBin")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "ifp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "ifp")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ifp")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "ifp")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ch")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "ch")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "No binhex data found")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "ch")
(PUNCT "==")
(LIT #"\r")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "ch")
(PUNCT "==")
(LIT #":")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "hqxifp")
(PUNCT "=")
(ID "_Hqxdecoderengine")
(PUNCT "(")
(ID "ifp")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT "=")
(ID "_Rledecoderengine")
(PUNCT "(")
(ID "hqxifp")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_readheader")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "len")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(ID "len")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(ID "binascii")
(PUNCT ".")
(ID "crc_hqx")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_checkcrc")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filecrc")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "unpack")
(PUNCT "(")
(LIT ">h")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 2)
(PUNCT ")")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "&")
(LIT 65535)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "&")
(LIT 65535)
(NEWLINE)
(KEYWORD if)
(ID "filecrc")
(PUNCT "!=")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "CRC error, computed %x, read %x")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT ",")
(ID "filecrc")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "crc")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_readheader")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "len")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "fname")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(ID "ord")
(PUNCT "(")
(ID "len")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "rest")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(LIT 1)
(PUNCT "+")
(LIT 4)
(PUNCT "+")
(LIT 4)
(PUNCT "+")
(LIT 2)
(PUNCT "+")
(LIT 4)
(PUNCT "+")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_checkcrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "type")
(PUNCT "=")
(ID "rest")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(LIT 5)
(PUNCT "]")
(NEWLINE)
(ID "creator")
(PUNCT "=")
(ID "rest")
(PUNCT "[")
(LIT 5)
(PUNCT ":")
(LIT 9)
(PUNCT "]")
(NEWLINE)
(ID "flags")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "unpack")
(PUNCT "(")
(LIT ">h")
(PUNCT ",")
(ID "rest")
(PUNCT "[")
(LIT 9)
(PUNCT ":")
(LIT 11)
(PUNCT "]")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "unpack")
(PUNCT "(")
(LIT ">l")
(PUNCT ",")
(ID "rest")
(PUNCT "[")
(LIT 11)
(PUNCT ":")
(LIT 15)
(PUNCT "]")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "=")
(ID "struct")
(PUNCT ".")
(ID "unpack")
(PUNCT "(")
(LIT ">l")
(PUNCT ",")
(ID "rest")
(PUNCT "[")
(LIT 15)
(PUNCT ":")
(LIT 19)
(PUNCT "]")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "FName")
(PUNCT "=")
(ID "fname")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "FInfo")
(PUNCT "=")
(ID "FInfo")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "FInfo")
(PUNCT ".")
(ID "Creator")
(PUNCT "=")
(ID "creator")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "FInfo")
(PUNCT ".")
(ID "Type")
(PUNCT "=")
(ID "type")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "FInfo")
(PUNCT ".")
(ID "Flags")
(PUNCT "=")
(ID "flags")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(ID "_DID_HEADER")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_HEADER")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Read data at wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "n")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "n")
(PUNCT "=")
(ID "min")
(PUNCT "(")
(ID "n")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "dlen")
(NEWLINE)
(DEDENT)
(ID "rv")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(KEYWORD while)
(ID "len")
(PUNCT "(")
(ID "rv")
(PUNCT ")")
(PUNCT "<")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rv")
(PUNCT "=")
(ID "rv")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(ID "n")
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "rv")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT "-")
(ID "n")
(NEWLINE)
(KEYWORD return)
(ID "rv")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "close_data")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_HEADER")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "close_data at wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dummy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "dlen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_checkcrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(ID "_DID_DATA")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read_rsrc")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "==")
(ID "_DID_HEADER")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "close_data")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "!=")
(ID "_DID_DATA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "Error")
(PUNCT "(")
(LIT "Read resource data at wrong time")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "n")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "n")
(PUNCT "=")
(ID "min")
(PUNCT "(")
(ID "n")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rlen")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT "-")
(ID "n")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_read")
(PUNCT "(")
(ID "n")
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
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dummy")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "read_rsrc")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "rlen")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_checkcrc")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "state")
(PUNCT "=")
(ID "_DID_RSRC")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "hexbin")
(PUNCT "(")
(ID "inp")
(PUNCT ",")
(ID "out")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "hexbin(infilename, outfilename) - Decode binhexed file")
(NEWLINE)
(ID "ifp")
(PUNCT "=")
(ID "HexBin")
(PUNCT "(")
(ID "inp")
(PUNCT ")")
(NEWLINE)
(ID "finfo")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "FInfo")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "out")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "out")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "FName")
(NEWLINE)
(DEDENT)
(ID "ofp")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(LIT "wb")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(LIT 128000)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "d")
(PUNCT ":")
(KEYWORD break)
(NEWLINE)
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "d")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "ifp")
(PUNCT ".")
(ID "close_data")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "d")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read_rsrc")
(PUNCT "(")
(LIT 128000)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "d")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ofp")
(PUNCT "=")
(ID "openrsrc")
(PUNCT "(")
(ID "out")
(PUNCT ",")
(LIT "wb")
(PUNCT ")")
(NEWLINE)
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "d")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "ifp")
(PUNCT ".")
(ID "read_rsrc")
(PUNCT "(")
(LIT 128000)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "d")
(PUNCT ":")
(KEYWORD break)
(NEWLINE)
(ID "ofp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "d")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ofp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ifp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)