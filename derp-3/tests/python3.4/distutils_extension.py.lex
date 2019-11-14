(LIT "distutils.extension\n\nProvides the Extension class, used to describe C/C++ extension\nmodules in setup scripts.")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "warnings")
(NEWLINE)
(KEYWORD class)
(ID "Extension")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Just a collection of attributes that describes an extension\n    module and everything needed to build it (hopefully in a portable\n    way, but there are hooks that let you be as unportable as you need).\n\n    Instance attributes:\n      name : string\n        the full name of the extension, including any packages -- ie.\n        *not* a filename or pathname, but Python dotted name\n      sources : [string]\n        list of source filenames, relative to the distribution root\n        (where the setup script lives), in Unix form (slash-separated)\n        for portability.  Source files may be C, C++, SWIG (.i),\n        platform-specific resource files, or whatever else is recognized\n        by the \"build_ext\" command as source for a Python extension.\n      include_dirs : [string]\n        list of directories to search for C/C++ header files (in Unix\n        form for portability)\n      define_macros : [(name : string, value : string|None)]\n        list of macros to define; each macro is defined using a 2-tuple,\n        where 'value' is either the string to define it to or None to\n        define it without a particular value (equivalent of \"#define\n        FOO\" in source or -DFOO on Unix C compiler command line)\n      undef_macros : [string]\n        list of macros to undefine explicitly\n      library_dirs : [string]\n        list of directories to search for C/C++ libraries at link time\n      libraries : [string]\n        list of library names (not filenames or paths) to link against\n      runtime_library_dirs : [string]\n        list of directories to search for C/C++ libraries at run time\n        (for shared extensions, this is when the extension is loaded)\n      extra_objects : [string]\n        list of extra files to link with (eg. object files not implied\n        by 'sources', static library that must be explicitly specified,\n        binary resource files, etc.)\n      extra_compile_args : [string]\n        any extra platform- and compiler-specific information to use\n        when compiling the source files in 'sources'.  For platforms and\n        compilers where \"command line\" makes sense, this is typically a\n        list of command-line arguments, but for other platforms it could\n        be anything.\n      extra_link_args : [string]\n        any extra platform- and compiler-specific information to use\n        when linking object files together to create the extension (or\n        to create a new static Python interpreter).  Similar\n        interpretation as for 'extra_compile_args'.\n      export_symbols : [string]\n        list of symbols to be exported from a shared extension.  Not\n        used on all platforms, and not generally necessary for Python\n        extensions, which typically export exactly one symbol: \"init\" +\n        extension_name.\n      swig_opts : [string]\n        any extra options to pass to SWIG if a source file has the .i\n        extension.\n      depends : [string]\n        list of files that the extension depends on\n      language : string\n        extension language (i.e. \"c\", \"c++\", \"objc\"). Will be detected\n        from the source extensions if not provided.\n      optional : boolean\n        specifies that a build failure in the extension should not abort the\n        build process, but simply not install the failing extension.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "sources")
(PUNCT ",")
(ID "include_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "define_macros")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "undef_macros")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "library_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "libraries")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "runtime_library_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_objects")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_compile_args")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_link_args")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "export_symbols")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "swig_opts")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "depends")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "language")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "optional")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AssertionError")
(PUNCT "(")
(LIT "'name' must be a string")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(PUNCT "(")
(ID "isinstance")
(PUNCT "(")
(ID "sources")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(KEYWORD and)
(ID "all")
(PUNCT "(")
(ID "isinstance")
(PUNCT "(")
(ID "v")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(KEYWORD for)
(ID "v")
(KEYWORD in)
(ID "sources")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AssertionError")
(PUNCT "(")
(LIT "'sources' must be a list of strings")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "sources")
(PUNCT "=")
(ID "sources")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "include_dirs")
(PUNCT "=")
(ID "include_dirs")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "define_macros")
(PUNCT "=")
(ID "define_macros")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "undef_macros")
(PUNCT "=")
(ID "undef_macros")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "library_dirs")
(PUNCT "=")
(ID "library_dirs")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "libraries")
(PUNCT "=")
(ID "libraries")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "runtime_library_dirs")
(PUNCT "=")
(ID "runtime_library_dirs")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "extra_objects")
(PUNCT "=")
(ID "extra_objects")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "extra_compile_args")
(PUNCT "=")
(ID "extra_compile_args")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "extra_link_args")
(PUNCT "=")
(ID "extra_link_args")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "export_symbols")
(PUNCT "=")
(ID "export_symbols")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "swig_opts")
(PUNCT "=")
(ID "swig_opts")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "depends")
(PUNCT "=")
(ID "depends")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "language")
(PUNCT "=")
(ID "language")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "optional")
(PUNCT "=")
(ID "optional")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "kw")
(PUNCT ")")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(PUNCT "[")
(ID "repr")
(PUNCT "(")
(ID "option")
(PUNCT ")")
(KEYWORD for)
(ID "option")
(KEYWORD in)
(ID "kw")
(PUNCT "]")
(NEWLINE)
(ID "options")
(PUNCT "=")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "sorted")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "msg")
(PUNCT "=")
(LIT "Unknown Extension options: %s")
(PUNCT "%")
(ID "options")
(NEWLINE)
(ID "warnings")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "read_setup_file")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Reads a Setup file and returns Extension instances.")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "sysconfig")
(KEYWORD import)
(PUNCT "(")
(ID "parse_makefile")
(PUNCT ",")
(ID "expand_makefile_vars")
(PUNCT ",")
(ID "_variable_rx")
(PUNCT ")")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "text_file")
(KEYWORD import)
(ID "TextFile")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "util")
(KEYWORD import)
(ID "split_quoted")
(NEWLINE)
(ID "vars")
(PUNCT "=")
(ID "parse_makefile")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(ID "file")
(PUNCT "=")
(ID "TextFile")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "strip_comments")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "skip_blanks")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "join_lines")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "lstrip_ws")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "rstrip_ws")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "extensions")
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
(ID "file")
(PUNCT ".")
(ID "readline")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "_variable_rx")
(PUNCT ".")
(ID "match")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(ID "line")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT "*")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(LIT "'%s' lines not handled yet")
(PUNCT "%")
(ID "line")
(PUNCT ")")
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "line")
(PUNCT "=")
(ID "expand_makefile_vars")
(PUNCT "(")
(ID "line")
(PUNCT ",")
(ID "vars")
(PUNCT ")")
(NEWLINE)
(ID "words")
(PUNCT "=")
(ID "split_quoted")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(NEWLINE)
(ID "module")
(PUNCT "=")
(ID "words")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(ID "ext")
(PUNCT "=")
(ID "Extension")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "append_next_word")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD for)
(ID "word")
(KEYWORD in)
(ID "words")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "append_next_word")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "append_next_word")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(NEWLINE)
(ID "append_next_word")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "suffix")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "splitext")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "switch")
(PUNCT "=")
(ID "word")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(PUNCT ";")
(ID "value")
(PUNCT "=")
(ID "word")
(PUNCT "[")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "suffix")
(KEYWORD in)
(PUNCT "(")
(LIT ".c")
(PUNCT ",")
(LIT ".cc")
(PUNCT ",")
(LIT ".cpp")
(PUNCT ",")
(LIT ".cxx")
(PUNCT ",")
(LIT ".c++")
(PUNCT ",")
(LIT ".m")
(PUNCT ",")
(LIT ".mm")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "sources")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-I")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "include_dirs")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-D")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "equals")
(PUNCT "=")
(ID "value")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT "=")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "equals")
(PUNCT "==")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "define_macros")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "define_macros")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "value")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(ID "equals")
(PUNCT "]")
(PUNCT ",")
(ID "value")
(PUNCT "[")
(ID "equals")
(PUNCT "+")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-U")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "undef_macros")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-C")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "extra_compile_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-l")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "libraries")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-L")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "library_dirs")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-R")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "runtime_library_dirs")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "word")
(PUNCT "==")
(LIT "-rpath")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "append_next_word")
(PUNCT "=")
(ID "ext")
(PUNCT ".")
(ID "runtime_library_dirs")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "word")
(PUNCT "==")
(LIT "-Xlinker")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "append_next_word")
(PUNCT "=")
(ID "ext")
(PUNCT ".")
(ID "extra_link_args")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "word")
(PUNCT "==")
(LIT "-Xcompiler")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "append_next_word")
(PUNCT "=")
(ID "ext")
(PUNCT ".")
(ID "extra_compile_args")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "switch")
(PUNCT "==")
(LIT "-u")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "extra_link_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "value")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "append_next_word")
(PUNCT "=")
(ID "ext")
(PUNCT ".")
(ID "extra_link_args")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "suffix")
(KEYWORD in)
(PUNCT "(")
(LIT ".a")
(PUNCT ",")
(LIT ".so")
(PUNCT ",")
(LIT ".sl")
(PUNCT ",")
(LIT ".o")
(PUNCT ",")
(LIT ".dylib")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ext")
(PUNCT ".")
(ID "extra_objects")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "word")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(LIT "unrecognized argument '%s'")
(PUNCT "%")
(ID "word")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "extensions")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "ext")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "extensions")
(NEWLINE)
(DEDENT)
(ENDMARKER)