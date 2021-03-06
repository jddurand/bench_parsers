(LIT "distutils.file_util\n\nUtility functions for operating on single files.\n")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "errors")
(KEYWORD import)
(ID "DistutilsFileError")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(KEYWORD import)
(ID "log")
(NEWLINE)
(ID "_copy_action")
(PUNCT "=")
(PUNCT "{")
(KEYWORD None)
(PUNCT ":")
(LIT "copying")
(PUNCT ",")
(LIT "hard")
(PUNCT ":")
(LIT "hard linking")
(PUNCT ",")
(LIT "sym")
(PUNCT ":")
(LIT "symbolically linking")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "_copy_file_contents")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "buffer_size")
(PUNCT "=")
(LIT 16)
(PUNCT "*")
(LIT 1024)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Copy the file 'src' to 'dst'; both must be filenames.  Any error\n    opening either file, reading from 'src', or writing to 'dst', raises\n    DistutilsFileError.  Data is read/written in chunks of 'buffer_size'\n    bytes (default 16k).  No attempt is made to handle anything apart from\n    regular files.\n    ")
(NEWLINE)
(ID "fsrc")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "fdst")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fsrc")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(LIT "rb")
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
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "could not open '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "e")
(PUNCT ".")
(ID "strerror")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "unlink")
(PUNCT "(")
(ID "dst")
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
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "could not delete '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "e")
(PUNCT ".")
(ID "strerror")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fdst")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT "wb")
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
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "could not create '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "e")
(PUNCT ".")
(ID "strerror")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "buf")
(PUNCT "=")
(ID "fsrc")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(ID "buffer_size")
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
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "could not read from '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "e")
(PUNCT ".")
(ID "strerror")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "buf")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fdst")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "buf")
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
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "could not write to '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "e")
(PUNCT ".")
(ID "strerror")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "fdst")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fdst")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "fsrc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fsrc")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "copy_file")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "preserve_mode")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "preserve_times")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "update")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "link")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "verbose")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "dry_run")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Copy a file 'src' to 'dst'.  If 'dst' is a directory, then 'src' is\n    copied there with the same name; otherwise, it must be a filename.  (If\n    the file exists, it will be ruthlessly clobbered.)  If 'preserve_mode'\n    is true (the default), the file's mode (type and permission bits, or\n    whatever is analogous on the current platform) is copied.  If\n    'preserve_times' is true (the default), the last-modified and\n    last-access times are copied as well.  If 'update' is true, 'src' will\n    only be copied if 'dst' does not exist, or if 'dst' does exist but is\n    older than 'src'.\n\n    'link' allows you to make hard links (os.link) or symbolic links\n    (os.symlink) instead of copying: set it to \"hard\" or \"sym\"; if it is\n    None (the default), files are copied.  Don't set 'link' on systems that\n    don't support it: 'copy_file()' doesn't check if hard or symbolic\n    linking is available. If hardlink fails, falls back to\n    _copy_file_contents().\n\n    Under Mac OS, uses the native file copy function in macostools; on\n    other systems, uses '_copy_file_contents()' to copy file contents.\n\n    Return a tuple (dest_name, copied): 'dest_name' is the actual name of\n    the output file, and 'copied' is true if the file was copied (or would\n    have been copied, if 'dry_run' true).\n    ")
(NEWLINE)
(KEYWORD from)
(ID "distutils")
(PUNCT ".")
(ID "dep_util")
(KEYWORD import)
(ID "newer")
(NEWLINE)
(KEYWORD from)
(ID "stat")
(KEYWORD import)
(ID "ST_ATIME")
(PUNCT ",")
(ID "ST_MTIME")
(PUNCT ",")
(ID "ST_MODE")
(PUNCT ",")
(ID "S_IMODE")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isfile")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "can't copy '%s': doesn't exist or not a regular file")
(PUNCT "%")
(ID "src")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isdir")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dir")
(PUNCT "=")
(ID "dst")
(NEWLINE)
(ID "dst")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "basename")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dir")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "update")
(KEYWORD and)
(KEYWORD not)
(ID "newer")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "verbose")
(PUNCT ">=")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "debug")
(PUNCT "(")
(LIT "not copying %s (output up-to-date)")
(PUNCT ",")
(ID "src")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "action")
(PUNCT "=")
(ID "_copy_action")
(PUNCT "[")
(ID "link")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "invalid value '%s' for 'link' argument")
(PUNCT "%")
(ID "link")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "verbose")
(PUNCT ">=")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "basename")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT "==")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "basename")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "info")
(PUNCT "(")
(LIT "%s %s -> %s")
(PUNCT ",")
(ID "action")
(PUNCT ",")
(ID "src")
(PUNCT ",")
(ID "dir")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "info")
(PUNCT "(")
(LIT "%s %s -> %s")
(PUNCT ",")
(ID "action")
(PUNCT ",")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "dry_run")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "link")
(PUNCT "==")
(LIT "hard")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(KEYWORD and)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "samefile")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "link")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "OSError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "link")
(PUNCT "==")
(LIT "sym")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(KEYWORD and)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "samefile")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "symlink")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "_copy_file_contents")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "preserve_mode")
(KEYWORD or)
(ID "preserve_times")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "st")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "preserve_times")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "utime")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(PUNCT "(")
(ID "st")
(PUNCT "[")
(ID "ST_ATIME")
(PUNCT "]")
(PUNCT ",")
(ID "st")
(PUNCT "[")
(ID "ST_MTIME")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "preserve_mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "chmod")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "S_IMODE")
(PUNCT "(")
(ID "st")
(PUNCT "[")
(ID "ST_MODE")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "move_file")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "verbose")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "dry_run")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Move a file 'src' to 'dst'.  If 'dst' is a directory, the file will\n    be moved into it with the same name; otherwise, 'src' is just renamed\n    to 'dst'.  Return the new full name of the file.\n\n    Handles cross-device moves on Unix using 'copy_file()'.  What about\n    other systems???\n    ")
(NEWLINE)
(KEYWORD from)
(ID "os")
(PUNCT ".")
(ID "path")
(KEYWORD import)
(ID "exists")
(PUNCT ",")
(ID "isfile")
(PUNCT ",")
(ID "isdir")
(PUNCT ",")
(ID "basename")
(PUNCT ",")
(ID "dirname")
(NEWLINE)
(KEYWORD import)
(ID "errno")
(NEWLINE)
(KEYWORD if)
(ID "verbose")
(PUNCT ">=")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "log")
(PUNCT ".")
(ID "info")
(PUNCT "(")
(LIT "moving %s -> %s")
(PUNCT ",")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "dry_run")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "dst")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isfile")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "can't move '%s': not a regular file")
(PUNCT "%")
(ID "src")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "isdir")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dst")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "dst")
(PUNCT ",")
(ID "basename")
(PUNCT "(")
(ID "src")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "exists")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "can't move '%s': destination '%s' already exists")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "isdir")
(PUNCT "(")
(ID "dirname")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "can't move '%s': destination '%s' not a valid path")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "copy_it")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "rename")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
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
(PUNCT "(")
(ID "num")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT "=")
(ID "e")
(PUNCT ".")
(ID "args")
(NEWLINE)
(KEYWORD if)
(ID "num")
(PUNCT "==")
(ID "errno")
(PUNCT ".")
(ID "EXDEV")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "copy_it")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "couldn't move '%s' to '%s': %s")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "copy_it")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "copy_file")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "verbose")
(PUNCT "=")
(ID "verbose")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "unlink")
(PUNCT "(")
(ID "src")
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
(PUNCT "(")
(ID "num")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT "=")
(ID "e")
(PUNCT ".")
(ID "args")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "unlink")
(PUNCT "(")
(ID "dst")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "OSError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "couldn't move '%s' to '%s' by copy/delete: ")
(LIT "delete '%s' failed: %s")
(PUNCT "%")
(PUNCT "(")
(ID "src")
(PUNCT ",")
(ID "dst")
(PUNCT ",")
(ID "src")
(PUNCT ",")
(ID "msg")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "dst")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write_file")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "contents")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Create a file with the specified name and write 'contents' (a\n    sequence of strings without line terminators) to it.\n    ")
(NEWLINE)
(ID "f")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "w")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "contents")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "line")
(PUNCT "+")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
