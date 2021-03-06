(LIT "distutils.bcppcompiler\n\nContains BorlandCCompiler, an implementation of the abstract CCompiler class\nfor the Borland C++ compiler.\n")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "errors")
(KEYWORD import)
(ID "DistutilsExecError")
(PUNCT ",")
(ID "DistutilsPlatformError")
(PUNCT ",")
(ID "CompileError")
(PUNCT ",")
(ID "LibError")
(PUNCT ",")
(ID "LinkError")
(PUNCT ",")
(ID "UnknownFileError")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "ccompiler")
(KEYWORD import)
(ID "CCompiler")
(PUNCT ",")
(ID "gen_preprocess_options")
(PUNCT ",")
(ID "gen_lib_options")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "file_util")
(KEYWORD import)
(ID "write_file")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "dep_util")
(KEYWORD import)
(ID "newer")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(KEYWORD import)
(ID "log")
(NEWLINE)
(KEYWORD class)
(ID "BCPPCompiler")
(PUNCT "(")
(ID "CCompiler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Concrete class that implements an interface to the Borland C/C++\n    compiler, as defined by the CCompiler abstract class.\n    ")
(NEWLINE)
(ID "compiler_type")
(PUNCT "=")
(LIT "bcpp")
(NEWLINE)
(ID "executables")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(ID "_c_extensions")
(PUNCT "=")
(PUNCT "[")
(LIT ".c")
(PUNCT "]")
(NEWLINE)
(ID "_cpp_extensions")
(PUNCT "=")
(PUNCT "[")
(LIT ".cc")
(PUNCT ",")
(LIT ".cpp")
(PUNCT ",")
(LIT ".cxx")
(PUNCT "]")
(NEWLINE)
(ID "src_extensions")
(PUNCT "=")
(ID "_c_extensions")
(PUNCT "+")
(ID "_cpp_extensions")
(NEWLINE)
(ID "obj_extension")
(PUNCT "=")
(LIT ".obj")
(NEWLINE)
(ID "static_lib_extension")
(PUNCT "=")
(LIT ".lib")
(NEWLINE)
(ID "shared_lib_extension")
(PUNCT "=")
(LIT ".dll")
(NEWLINE)
(ID "static_lib_format")
(PUNCT "=")
(ID "shared_lib_format")
(PUNCT "=")
(LIT "%s%s")
(NEWLINE)
(ID "exe_extension")
(PUNCT "=")
(LIT ".exe")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "verbose")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "dry_run")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "force")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "CCompiler")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "verbose")
(PUNCT ",")
(ID "dry_run")
(PUNCT ",")
(ID "force")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "cc")
(PUNCT "=")
(LIT "bcc32.exe")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "linker")
(PUNCT "=")
(LIT "ilink32.exe")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lib")
(PUNCT "=")
(LIT "tlib.exe")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "preprocess_options")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "compile_options")
(PUNCT "=")
(PUNCT "[")
(LIT "/tWM")
(PUNCT ",")
(LIT "/O2")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/g0")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "compile_options_debug")
(PUNCT "=")
(PUNCT "[")
(LIT "/tWM")
(PUNCT ",")
(LIT "/Od")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/g0")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ldflags_shared")
(PUNCT "=")
(PUNCT "[")
(LIT "/Tpd")
(PUNCT ",")
(LIT "/Gn")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/x")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ldflags_shared_debug")
(PUNCT "=")
(PUNCT "[")
(LIT "/Tpd")
(PUNCT ",")
(LIT "/Gn")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/x")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ldflags_static")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ldflags_exe")
(PUNCT "=")
(PUNCT "[")
(LIT "/Gn")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/x")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "ldflags_exe_debug")
(PUNCT "=")
(PUNCT "[")
(LIT "/Gn")
(PUNCT ",")
(LIT "/q")
(PUNCT ",")
(LIT "/x")
(PUNCT ",")
(LIT "/r")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "compile")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "sources")
(PUNCT ",")
(ID "output_dir")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "macros")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "include_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "debug")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "extra_preargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_postargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "depends")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "macros")
(PUNCT ",")
(ID "objects")
(PUNCT ",")
(ID "extra_postargs")
(PUNCT ",")
(ID "pp_opts")
(PUNCT ",")
(ID "build")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_setup_compile")
(PUNCT "(")
(ID "output_dir")
(PUNCT ",")
(ID "macros")
(PUNCT ",")
(ID "include_dirs")
(PUNCT ",")
(ID "sources")
(PUNCT ",")
(ID "depends")
(PUNCT ",")
(ID "extra_postargs")
(PUNCT ")")
(NEWLINE)
(ID "compile_opts")
(PUNCT "=")
(ID "extra_preargs")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "compile_opts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "-c")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "debug")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "compile_opts")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "compile_options_debug")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "compile_opts")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "compile_options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "obj")
(KEYWORD in)
(ID "objects")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "src")
(PUNCT ",")
(ID "ext")
(PUNCT "=")
(ID "build")
(PUNCT "[")
(ID "obj")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "src")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normpath")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(NEWLINE)
(ID "obj")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normpath")
(PUNCT "(")
(ID "obj")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mkpath")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "obj")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "ext")
(PUNCT "==")
(LIT ".res")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "ext")
(PUNCT "==")
(LIT ".rc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "spawn")
(PUNCT "(")
(PUNCT "[")
(LIT "brcc32")
(PUNCT ",")
(LIT "-fo")
(PUNCT ",")
(ID "obj")
(PUNCT ",")
(ID "src")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "DistutilsExecError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CompileError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "ext")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_c_extensions")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "input_opt")
(PUNCT "=")
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "ext")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_cpp_extensions")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "input_opt")
(PUNCT "=")
(LIT "-P")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "input_opt")
(PUNCT "=")
(LIT "")
(NEWLINE)
(DEDENT)
(ID "output_opt")
(PUNCT "=")
(LIT "-o")
(PUNCT "+")
(ID "obj")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "spawn")
(PUNCT "(")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "cc")
(PUNCT "]")
(PUNCT "+")
(ID "compile_opts")
(PUNCT "+")
(ID "pp_opts")
(PUNCT "+")
(PUNCT "[")
(ID "input_opt")
(PUNCT ",")
(ID "output_opt")
(PUNCT "]")
(PUNCT "+")
(ID "extra_postargs")
(PUNCT "+")
(PUNCT "[")
(ID "src")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "DistutilsExecError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "CompileError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "objects")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "create_static_lib")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "objects")
(PUNCT ",")
(ID "output_libname")
(PUNCT ",")
(ID "output_dir")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "debug")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "target_lang")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_dir")
(PUNCT ")")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fix_object_args")
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_dir")
(PUNCT ")")
(NEWLINE)
(ID "output_filename")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "library_filename")
(PUNCT "(")
(ID "output_libname")
(PUNCT ",")
(ID "output_dir")
(PUNCT "=")
(ID "output_dir")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_need_link")
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lib_args")
(PUNCT "=")
(PUNCT "[")
(ID "output_filename")
(PUNCT ",")
(LIT "/u")
(PUNCT "]")
(PUNCT "+")
(ID "objects")
(NEWLINE)
(KEYWORD if)
(ID "debug")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "spawn")
(PUNCT "(")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "lib")
(PUNCT "]")
(PUNCT "+")
(ID "lib_args")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "DistutilsExecError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "LibError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "debug")
(PUNCT "(")
(LIT "skipping %s (up-to-date)")
(PUNCT ",")
(ID "output_filename")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "link")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "target_desc")
(PUNCT ",")
(ID "objects")
(PUNCT ",")
(ID "output_filename")
(PUNCT ",")
(ID "output_dir")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "libraries")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "library_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "runtime_library_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "export_symbols")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "debug")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "extra_preargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_postargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "build_temp")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "target_lang")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_dir")
(PUNCT ")")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fix_object_args")
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_dir")
(PUNCT ")")
(NEWLINE)
(PUNCT "(")
(ID "libraries")
(PUNCT ",")
(ID "library_dirs")
(PUNCT ",")
(ID "runtime_library_dirs")
(PUNCT ")")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fix_lib_args")
(PUNCT "(")
(ID "libraries")
(PUNCT ",")
(ID "library_dirs")
(PUNCT ",")
(ID "runtime_library_dirs")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "runtime_library_dirs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(LIT "I don't know what to do with 'runtime_library_dirs': %s")
(PUNCT ",")
(ID "str")
(PUNCT "(")
(ID "runtime_library_dirs")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "output_dir")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "output_filename")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "output_dir")
(PUNCT ",")
(ID "output_filename")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_need_link")
(PUNCT "(")
(ID "objects")
(PUNCT ",")
(ID "output_filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "target_desc")
(PUNCT "==")
(ID "CCompiler")
(PUNCT ".")
(ID "EXECUTABLE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "startup_obj")
(PUNCT "=")
(LIT "c0w32")
(NEWLINE)
(KEYWORD if)
(ID "debug")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ldflags_exe_debug")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ldflags_exe")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "startup_obj")
(PUNCT "=")
(LIT "c0d32")
(NEWLINE)
(KEYWORD if)
(ID "debug")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ldflags_shared_debug")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "ldflags_shared")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "export_symbols")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "def_file")
(PUNCT "=")
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "head")
(PUNCT ",")
(ID "tail")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(ID "output_filename")
(PUNCT ")")
(NEWLINE)
(ID "modname")
(PUNCT ",")
(ID "ext")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "splitext")
(PUNCT "(")
(ID "tail")
(PUNCT ")")
(NEWLINE)
(ID "temp_dir")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "objects")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "def_file")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "temp_dir")
(PUNCT ",")
(LIT "%s.def")
(PUNCT "%")
(ID "modname")
(PUNCT ")")
(NEWLINE)
(ID "contents")
(PUNCT "=")
(PUNCT "[")
(LIT "EXPORTS")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "sym")
(KEYWORD in)
(PUNCT "(")
(ID "export_symbols")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "contents")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "  %s=_%s")
(PUNCT "%")
(PUNCT "(")
(ID "sym")
(PUNCT ",")
(ID "sym")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "execute")
(PUNCT "(")
(ID "write_file")
(PUNCT ",")
(PUNCT "(")
(ID "def_file")
(PUNCT ",")
(ID "contents")
(PUNCT ")")
(PUNCT ",")
(LIT "writing %s")
(PUNCT "%")
(ID "def_file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "objects2")
(PUNCT "=")
(ID "map")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normpath")
(PUNCT ",")
(ID "objects")
(PUNCT ")")
(NEWLINE)
(ID "objects")
(PUNCT "=")
(PUNCT "[")
(ID "startup_obj")
(PUNCT "]")
(NEWLINE)
(ID "resources")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "file")
(KEYWORD in)
(ID "objects2")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "base")
(PUNCT ",")
(ID "ext")
(PUNCT ")")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "splitext")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normcase")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "ext")
(PUNCT "==")
(LIT ".res")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "resources")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "objects")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD for)
(ID "l")
(KEYWORD in)
(ID "library_dirs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "/L%s")
(PUNCT "%")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normpath")
(PUNCT "(")
(ID "l")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "/L.")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "objects")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(PUNCT "[")
(LIT ",")
(PUNCT ",")
(ID "output_filename")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT ",,")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "lib")
(KEYWORD in)
(ID "libraries")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "libfile")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "find_library_file")
(PUNCT "(")
(ID "library_dirs")
(PUNCT ",")
(ID "lib")
(PUNCT ",")
(ID "debug")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "libfile")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "lib")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "libfile")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "import32")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "cw32mt")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(PUNCT "[")
(LIT ",")
(PUNCT ",")
(ID "def_file")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT ",")
(PUNCT ")")
(NEWLINE)
(ID "ld_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "resources")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "extra_preargs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT "[")
(PUNCT ":")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "extra_preargs")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "extra_postargs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ld_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "extra_postargs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "mkpath")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "output_filename")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "spawn")
(PUNCT "(")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "linker")
(PUNCT "]")
(PUNCT "+")
(ID "ld_args")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "DistutilsExecError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "LinkError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "debug")
(PUNCT "(")
(LIT "skipping %s (up-to-date)")
(PUNCT ",")
(ID "output_filename")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "find_library_file")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "dirs")
(PUNCT ",")
(ID "lib")
(PUNCT ",")
(ID "debug")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "debug")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dlib")
(PUNCT "=")
(PUNCT "(")
(ID "lib")
(PUNCT "+")
(LIT "_d")
(PUNCT ")")
(NEWLINE)
(ID "try_names")
(PUNCT "=")
(PUNCT "(")
(ID "dlib")
(PUNCT "+")
(LIT "_bcpp")
(PUNCT ",")
(ID "lib")
(PUNCT "+")
(LIT "_bcpp")
(PUNCT ",")
(ID "dlib")
(PUNCT ",")
(ID "lib")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "try_names")
(PUNCT "=")
(PUNCT "(")
(ID "lib")
(PUNCT "+")
(LIT "_bcpp")
(PUNCT ",")
(ID "lib")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "dir")
(KEYWORD in)
(ID "dirs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "name")
(KEYWORD in)
(ID "try_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "libfile")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "dir")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "library_filename")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "libfile")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "libfile")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "object_filenames")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source_filenames")
(PUNCT ",")
(ID "strip_dir")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "output_dir")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "output_dir")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(ID "output_dir")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "obj_names")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "src_name")
(KEYWORD in)
(ID "source_filenames")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "base")
(PUNCT ",")
(ID "ext")
(PUNCT ")")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "splitext")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normcase")
(PUNCT "(")
(ID "src_name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "ext")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "src_extensions")
(PUNCT "+")
(PUNCT "[")
(LIT ".rc")
(PUNCT ",")
(LIT ".res")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "UnknownFileError")
(PUNCT "(")
(LIT "unknown file type '%s' (from '%s')")
(PUNCT "%")
(PUNCT "(")
(ID "ext")
(PUNCT ",")
(ID "src_name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "strip_dir")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "base")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "basename")
(PUNCT "(")
(ID "base")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "ext")
(PUNCT "==")
(LIT ".res")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "obj_names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "output_dir")
(PUNCT ",")
(ID "base")
(PUNCT "+")
(ID "ext")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "ext")
(PUNCT "==")
(LIT ".rc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "obj_names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "output_dir")
(PUNCT ",")
(ID "base")
(PUNCT "+")
(LIT ".res")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "obj_names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "output_dir")
(PUNCT ",")
(ID "base")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "obj_extension")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "obj_names")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "preprocess")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "output_file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "macros")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "include_dirs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_preargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "extra_postargs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(PUNCT "(")
(ID "_")
(PUNCT ",")
(ID "macros")
(PUNCT ",")
(ID "include_dirs")
(PUNCT ")")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_fix_compile_args")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "macros")
(PUNCT ",")
(ID "include_dirs")
(PUNCT ")")
(NEWLINE)
(ID "pp_opts")
(PUNCT "=")
(ID "gen_preprocess_options")
(PUNCT "(")
(ID "macros")
(PUNCT ",")
(ID "include_dirs")
(PUNCT ")")
(NEWLINE)
(ID "pp_args")
(PUNCT "=")
(PUNCT "[")
(LIT "cpp32.exe")
(PUNCT "]")
(PUNCT "+")
(ID "pp_opts")
(NEWLINE)
(KEYWORD if)
(ID "output_file")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pp_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "-o")
(PUNCT "+")
(ID "output_file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "extra_preargs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pp_args")
(PUNCT "[")
(PUNCT ":")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "extra_preargs")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "extra_postargs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pp_args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "extra_postargs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "pp_args")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "force")
(KEYWORD or)
(ID "output_file")
(KEYWORD is)
(KEYWORD None)
(KEYWORD or)
(ID "newer")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "output_file")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "output_file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "mkpath")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "output_file")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "spawn")
(PUNCT "(")
(ID "pp_args")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "DistutilsExecError")
(KEYWORD as)
(ID "msg")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "CompileError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(ENDMARKER)
