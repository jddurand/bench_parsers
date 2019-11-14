(LIT "Interface to the liblzma compression library.\n\nThis module provides a class for reading and writing compressed files,\nclasses for incremental (de)compression, and convenience functions for\none-shot (de)compression.\n\nThese classes and functions support both the XZ and legacy LZMA\ncontainer formats, as well as raw compressed data streams.\n")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "CHECK_NONE")
(PUNCT ",")
(LIT "CHECK_CRC32")
(PUNCT ",")
(LIT "CHECK_CRC64")
(PUNCT ",")
(LIT "CHECK_SHA256")
(PUNCT ",")
(LIT "CHECK_ID_MAX")
(PUNCT ",")
(LIT "CHECK_UNKNOWN")
(PUNCT ",")
(LIT "FILTER_LZMA1")
(PUNCT ",")
(LIT "FILTER_LZMA2")
(PUNCT ",")
(LIT "FILTER_DELTA")
(PUNCT ",")
(LIT "FILTER_X86")
(PUNCT ",")
(LIT "FILTER_IA64")
(PUNCT ",")
(LIT "FILTER_ARM")
(PUNCT ",")
(LIT "FILTER_ARMTHUMB")
(PUNCT ",")
(LIT "FILTER_POWERPC")
(PUNCT ",")
(LIT "FILTER_SPARC")
(PUNCT ",")
(LIT "FORMAT_AUTO")
(PUNCT ",")
(LIT "FORMAT_XZ")
(PUNCT ",")
(LIT "FORMAT_ALONE")
(PUNCT ",")
(LIT "FORMAT_RAW")
(PUNCT ",")
(LIT "MF_HC3")
(PUNCT ",")
(LIT "MF_HC4")
(PUNCT ",")
(LIT "MF_BT2")
(PUNCT ",")
(LIT "MF_BT3")
(PUNCT ",")
(LIT "MF_BT4")
(PUNCT ",")
(LIT "MODE_FAST")
(PUNCT ",")
(LIT "MODE_NORMAL")
(PUNCT ",")
(LIT "PRESET_DEFAULT")
(PUNCT ",")
(LIT "PRESET_EXTREME")
(PUNCT ",")
(LIT "LZMACompressor")
(PUNCT ",")
(LIT "LZMADecompressor")
(PUNCT ",")
(LIT "LZMAFile")
(PUNCT ",")
(LIT "LZMAError")
(PUNCT ",")
(LIT "open")
(PUNCT ",")
(LIT "compress")
(PUNCT ",")
(LIT "decompress")
(PUNCT ",")
(LIT "is_check_supported")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD import)
(ID "builtins")
(NEWLINE)
(KEYWORD import)
(ID "io")
(NEWLINE)
(KEYWORD from)
(ID "_lzma")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(KEYWORD from)
(ID "_lzma")
(KEYWORD import)
(ID "_encode_filter_properties")
(PUNCT ",")
(ID "_decode_filter_properties")
(NEWLINE)
(ID "_MODE_CLOSED")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "_MODE_READ")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "_MODE_READ_EOF")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "_MODE_WRITE")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "_BUFFER_SIZE")
(PUNCT "=")
(LIT 8192)
(NEWLINE)
(KEYWORD class)
(ID "LZMAFile")
(PUNCT "(")
(ID "io")
(PUNCT ".")
(ID "BufferedIOBase")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A file object providing transparent LZMA (de)compression.\n\n    An LZMAFile can act as a wrapper for an existing file object, or\n    refer directly to a named file on disk.\n\n    Note that LZMAFile provides a *binary* file interface - data read\n    is returned as bytes, and data to be written must be given as bytes.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "mode")
(PUNCT "=")
(LIT "r")
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "check")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(ID "preset")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Open an LZMA-compressed file in binary mode.\n\n        filename can be either an actual file name (given as a str or\n        bytes object), in which case the named file is opened, or it can\n        be an existing file object to read from or write to.\n\n        mode can be \"r\" for reading (default), \"w\" for (over)writing,\n        \"x\" for creating exclusively, or \"a\" for appending. These can\n        equivalently be given as \"rb\", \"wb\", \"xb\" and \"ab\" respectively.\n\n        format specifies the container format to use for the file.\n        If mode is \"r\", this defaults to FORMAT_AUTO. Otherwise, the\n        default is FORMAT_XZ.\n\n        check specifies the integrity check to use. This argument can\n        only be used when opening a file for writing. For FORMAT_XZ,\n        the default is CHECK_CRC64. FORMAT_ALONE and FORMAT_RAW do not\n        support integrity checks - for these formats, check must be\n        omitted, or be CHECK_NONE.\n\n        When opening a file for reading, the *preset* argument is not\n        meaningful, and should be omitted. The *filters* argument should\n        also be omitted, except when format is FORMAT_RAW (in which case\n        it is required).\n\n        When opening a file for writing, the settings used by the\n        compressor can be specified either as a preset compression\n        level (with the *preset* argument), or in detail as a custom\n        filter chain (with the *filters* argument). For FORMAT_XZ and\n        FORMAT_ALONE, the default is to use the PRESET_DEFAULT preset\n        level. For FORMAT_RAW, the caller must always specify a filter\n        chain; the raw compressor does not support preset compression\n        levels.\n\n        preset (if provided) should be an integer in the range 0-9,\n        optionally OR-ed with the constant PRESET_EXTREME.\n\n        filters (if provided) should be a sequence of dicts. Each dict\n        should have an entry for \"id\" indicating ID of the filter, plus\n        additional entries for options to the filter.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_closefp")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "_MODE_CLOSED")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_size")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(ID "mode")
(KEYWORD in)
(PUNCT "(")
(LIT "r")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "check")
(PUNCT "!=")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Cannot specify an integrity check ")
(LIT "when opening a file for reading")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "preset")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Cannot specify a preset compression ")
(LIT "level when opening a file for reading")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "format")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "format")
(PUNCT "=")
(ID "FORMAT_AUTO")
(NEWLINE)
(DEDENT)
(ID "mode_code")
(PUNCT "=")
(ID "_MODE_READ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_init_args")
(PUNCT "=")
(PUNCT "{")
(LIT "format")
(PUNCT ":")
(ID "format")
(PUNCT ",")
(LIT "filters")
(PUNCT ":")
(ID "filters")
(PUNCT "}")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT "=")
(ID "LZMADecompressor")
(PUNCT "(")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "_init_args")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "mode")
(KEYWORD in)
(PUNCT "(")
(LIT "w")
(PUNCT ",")
(LIT "wb")
(PUNCT ",")
(LIT "a")
(PUNCT ",")
(LIT "ab")
(PUNCT ",")
(LIT "x")
(PUNCT ",")
(LIT "xb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "format")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "format")
(PUNCT "=")
(ID "FORMAT_XZ")
(NEWLINE)
(DEDENT)
(ID "mode_code")
(PUNCT "=")
(ID "_MODE_WRITE")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_compressor")
(PUNCT "=")
(ID "LZMACompressor")
(PUNCT "(")
(ID "format")
(PUNCT "=")
(ID "format")
(PUNCT ",")
(ID "check")
(PUNCT "=")
(ID "check")
(PUNCT ",")
(ID "preset")
(PUNCT "=")
(ID "preset")
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(ID "filters")
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
(LIT "Invalid mode: {!r}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(PUNCT "(")
(ID "str")
(PUNCT ",")
(ID "bytes")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "b")
(KEYWORD not)
(KEYWORD in)
(ID "mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mode")
(PUNCT "+=")
(LIT "b")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(ID "builtins")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "mode")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_closefp")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "mode_code")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "hasattr")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "read")
(PUNCT ")")
(KEYWORD or)
(ID "hasattr")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "write")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(ID "filename")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "mode_code")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "filename must be a str or bytes object, or a file")
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
(LIT "Flush and close the file.\n\n        May be called more than once without error. Once the file is\n        closed, any other operation on it will raise a ValueError.\n        ")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "==")
(ID "_MODE_CLOSED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(KEYWORD in)
(PUNCT "(")
(ID "_MODE_READ")
(PUNCT ",")
(ID "_MODE_READ_EOF")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "==")
(ID "_MODE_WRITE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_compressor")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_compressor")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_closefp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_closefp")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "_MODE_CLOSED")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "closed")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "True if this file is closed.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "==")
(ID "_MODE_CLOSED")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "fileno")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the file descriptor for the underlying file.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "fileno")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "seekable")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return whether the file supports seeking.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "readable")
(PUNCT "(")
(PUNCT ")")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "seekable")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "readable")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return whether the file was opened for reading.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_mode")
(KEYWORD in)
(PUNCT "(")
(ID "_MODE_READ")
(PUNCT ",")
(ID "_MODE_READ_EOF")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "writable")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return whether the file was opened for writing.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "==")
(ID "_MODE_WRITE")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_check_not_closed")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "closed")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "I/O operation on closed file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_check_can_read")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(ID "_MODE_READ")
(PUNCT ",")
(ID "_MODE_READ_EOF")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "io")
(PUNCT ".")
(ID "UnsupportedOperation")
(PUNCT "(")
(LIT "File not open for reading")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_check_can_write")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "!=")
(ID "_MODE_WRITE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "io")
(PUNCT ".")
(ID "UnsupportedOperation")
(PUNCT "(")
(LIT "File not open for writing")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_check_can_seek")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(ID "_MODE_READ")
(PUNCT ",")
(ID "_MODE_READ_EOF")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "io")
(PUNCT ".")
(ID "UnsupportedOperation")
(PUNCT "(")
(LIT "Seeking is only supported ")
(LIT "on files open for reading")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "seekable")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "io")
(PUNCT ".")
(ID "UnsupportedOperation")
(PUNCT "(")
(LIT "The underlying file object ")
(LIT "does not support seeking")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_fill_buffer")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "==")
(ID "_MODE_READ_EOF")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "==")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawblock")
(PUNCT "=")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT ".")
(ID "unused_data")
(KEYWORD or)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(ID "_BUFFER_SIZE")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "rawblock")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "_MODE_READ_EOF")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_size")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pos")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "EOFError")
(PUNCT "(")
(LIT "Compressed file ended before the ")
(LIT "end-of-stream marker was reached")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT "=")
(ID "LZMADecompressor")
(PUNCT "(")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "_init_args")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT ".")
(ID "decompress")
(PUNCT "(")
(ID "rawblock")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "LZMAError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "_MODE_READ_EOF")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_size")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pos")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT ".")
(ID "decompress")
(PUNCT "(")
(ID "rawblock")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_read_all")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "return_data")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "blocks")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "_fill_buffer")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "return_data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "return_data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "blocks")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_read_block")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "n")
(PUNCT ",")
(ID "return_data")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "end")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "+")
(ID "n")
(NEWLINE)
(KEYWORD if)
(ID "end")
(PUNCT "<=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(ID "end")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(ID "end")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "data")
(KEYWORD if)
(ID "return_data")
(KEYWORD else)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "blocks")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(ID "n")
(PUNCT ">")
(LIT 0)
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "_fill_buffer")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "n")
(PUNCT "<")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(PUNCT ":")
(ID "n")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(ID "n")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "return_data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "n")
(PUNCT "-=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "return_data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "blocks")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "peek")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "size")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return buffered data without advancing the file position.\n\n        Always returns at least one byte of data, unless at EOF.\n        The exact number of bytes returned is unspecified.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_fill_buffer")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "size")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read up to size uncompressed bytes from the file.\n\n        If size is negative or omitted, read until EOF is reached.\n        Returns b\"\" if the file is already at EOF.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "size")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "size")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_read_all")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_read_block")
(PUNCT "(")
(ID "size")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "read1")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "size")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read up to size uncompressed bytes, while trying to avoid\n        making multiple reads from the underlying stream.\n\n        Returns b\"\" if the file is at EOF.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(PUNCT "(")
(ID "size")
(PUNCT "==")
(LIT 0)
(KEYWORD or)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "==")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ")")
(KEYWORD and)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_fill_buffer")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT #"")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "size")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "+")
(ID "size")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "readline")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "size")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read a line of uncompressed bytes from the file.\n\n        The terminating newline (if present) is retained. If size is\n        non-negative, no more than size bytes will be read (in which\n        case the line may be incomplete). Returns b'' if already at EOF.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "size")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "end")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT #"\n")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ")")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(ID "end")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT ":")
(ID "end")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(ID "end")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "line")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "io")
(PUNCT ".")
(ID "BufferedIOBase")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "size")
(PUNCT ")")
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
(LIT "Write a bytes object to the file.\n\n        Returns the number of uncompressed bytes written, which is\n        always len(data). Note that due to buffering, the file on disk\n        may not reflect the data written until close() is called.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_write")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "compressed")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_compressor")
(PUNCT ".")
(ID "compress")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "compressed")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_rewind")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_fp")
(PUNCT ".")
(ID "seek")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_mode")
(PUNCT "=")
(ID "_MODE_READ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_decompressor")
(PUNCT "=")
(ID "LZMADecompressor")
(PUNCT "(")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "_init_args")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer")
(PUNCT "=")
(LIT #"")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_buffer_offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "seek")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "offset")
(PUNCT ",")
(ID "whence")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Change the file position.\n\n        The new position is specified by offset, relative to the\n        position indicated by whence. Possible values for whence are:\n\n            0: start of stream (default): offset must not be negative\n            1: current stream position\n            2: end of stream; offset must not be positive\n\n        Returns the new file position.\n\n        Note that seeking is emulated, sp depending on the parameters,\n        this operation may be extremely slow.\n        ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_can_seek")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "whence")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "whence")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "offset")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT "+")
(ID "offset")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "whence")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_size")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_read_all")
(PUNCT "(")
(ID "return_data")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "offset")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_size")
(PUNCT "+")
(ID "offset")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Invalid value for whence: {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "whence")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "offset")
(PUNCT "<")
(ID "self")
(PUNCT ".")
(ID "_pos")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_rewind")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "offset")
(PUNCT "-=")
(ID "self")
(PUNCT ".")
(ID "_pos")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_read_block")
(PUNCT "(")
(ID "offset")
(PUNCT ",")
(ID "return_data")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_pos")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "tell")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the current file position.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_check_not_closed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_pos")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "mode")
(PUNCT "=")
(LIT "rb")
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "check")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(ID "preset")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "encoding")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "newline")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Open an LZMA-compressed file in binary or text mode.\n\n    filename can be either an actual file name (given as a str or bytes\n    object), in which case the named file is opened, or it can be an\n    existing file object to read from or write to.\n\n    The mode argument can be \"r\", \"rb\" (default), \"w\", \"wb\", \"x\", \"xb\",\n    \"a\", or \"ab\" for binary mode, or \"rt\", \"wt\", \"xt\", or \"at\" for text\n    mode.\n\n    The format, check, preset and filters arguments specify the\n    compression settings, as for LZMACompressor, LZMADecompressor and\n    LZMAFile.\n\n    For binary mode, this function is equivalent to the LZMAFile\n    constructor: LZMAFile(filename, mode, ...). In this case, the\n    encoding, errors and newline arguments must not be provided.\n\n    For text mode, a LZMAFile object is created, and wrapped in an\n    io.TextIOWrapper instance with the specified encoding, error\n    handling behavior, and line ending(s).\n\n    ")
(NEWLINE)
(KEYWORD if)
(LIT "t")
(KEYWORD in)
(ID "mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "b")
(KEYWORD in)
(ID "mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Invalid mode: %r")
(PUNCT "%")
(PUNCT "(")
(ID "mode")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "encoding")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Argument 'encoding' not supported in binary mode")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "errors")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Argument 'errors' not supported in binary mode")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "newline")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Argument 'newline' not supported in binary mode")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "lz_mode")
(PUNCT "=")
(ID "mode")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "t")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(NEWLINE)
(ID "binary_file")
(PUNCT "=")
(ID "LZMAFile")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "lz_mode")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(ID "format")
(PUNCT ",")
(ID "check")
(PUNCT "=")
(ID "check")
(PUNCT ",")
(ID "preset")
(PUNCT "=")
(ID "preset")
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(ID "filters")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT "t")
(KEYWORD in)
(ID "mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "io")
(PUNCT ".")
(ID "TextIOWrapper")
(PUNCT "(")
(ID "binary_file")
(PUNCT ",")
(ID "encoding")
(PUNCT ",")
(ID "errors")
(PUNCT ",")
(ID "newline")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "binary_file")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "compress")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(ID "FORMAT_XZ")
(PUNCT ",")
(ID "check")
(PUNCT "=")
(PUNCT "-")
(LIT 1)
(PUNCT ",")
(ID "preset")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compress a block of data.\n\n    Refer to LZMACompressor's docstring for a description of the\n    optional arguments *format*, *check*, *preset* and *filters*.\n\n    For incremental compression, use an LZMACompressor instead.\n    ")
(NEWLINE)
(ID "comp")
(PUNCT "=")
(ID "LZMACompressor")
(PUNCT "(")
(ID "format")
(PUNCT ",")
(ID "check")
(PUNCT ",")
(ID "preset")
(PUNCT ",")
(ID "filters")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "comp")
(PUNCT ".")
(ID "compress")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(PUNCT "+")
(ID "comp")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "decompress")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(ID "FORMAT_AUTO")
(PUNCT ",")
(ID "memlimit")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "filters")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Decompress a block of data.\n\n    Refer to LZMADecompressor's docstring for a description of the\n    optional arguments *format*, *check* and *filters*.\n\n    For incremental decompression, use an LZMADecompressor instead.\n    ")
(NEWLINE)
(ID "results")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "decomp")
(PUNCT "=")
(ID "LZMADecompressor")
(PUNCT "(")
(ID "format")
(PUNCT ",")
(ID "memlimit")
(PUNCT ",")
(ID "filters")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "res")
(PUNCT "=")
(ID "decomp")
(PUNCT ".")
(ID "decompress")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "LZMAError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "results")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "results")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "res")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "decomp")
(PUNCT ".")
(ID "eof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "LZMAError")
(PUNCT "(")
(LIT "Compressed data ended before the ")
(LIT "end-of-stream marker was reached")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "data")
(PUNCT "=")
(ID "decomp")
(PUNCT ".")
(ID "unused_data")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "data")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(LIT #"")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "results")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
