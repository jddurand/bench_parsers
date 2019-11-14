(LIT "Constants/functions for interpreting results of os.stat() and os.lstat().\n\nSuggested usage: from stat import *\n")
(NEWLINE)
(ID "ST_MODE")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "ST_INO")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "ST_DEV")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "ST_NLINK")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "ST_UID")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "ST_GID")
(PUNCT "=")
(LIT 5)
(NEWLINE)
(ID "ST_SIZE")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "ST_ATIME")
(PUNCT "=")
(LIT 7)
(NEWLINE)
(ID "ST_MTIME")
(PUNCT "=")
(LIT 8)
(NEWLINE)
(ID "ST_CTIME")
(PUNCT "=")
(LIT 9)
(NEWLINE)
(KEYWORD def)
(ID "S_IMODE")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the portion of the file's mode that can be set by\n    os.chmod().\n    ")
(NEWLINE)
(KEYWORD return)
(ID "mode")
(PUNCT "&")
(LIT 4095)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the portion of the file's mode that describes the\n    file type.\n    ")
(NEWLINE)
(KEYWORD return)
(ID "mode")
(PUNCT "&")
(LIT 61440)
(NEWLINE)
(DEDENT)
(ID "S_IFDIR")
(PUNCT "=")
(LIT 16384)
(NEWLINE)
(ID "S_IFCHR")
(PUNCT "=")
(LIT 8192)
(NEWLINE)
(ID "S_IFBLK")
(PUNCT "=")
(LIT 24576)
(NEWLINE)
(ID "S_IFREG")
(PUNCT "=")
(LIT 32768)
(NEWLINE)
(ID "S_IFIFO")
(PUNCT "=")
(LIT 4096)
(NEWLINE)
(ID "S_IFLNK")
(PUNCT "=")
(LIT 40960)
(NEWLINE)
(ID "S_IFSOCK")
(PUNCT "=")
(LIT 49152)
(NEWLINE)
(KEYWORD def)
(ID "S_ISDIR")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a directory.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFDIR")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISCHR")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a character special device file.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFCHR")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISBLK")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a block special device file.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFBLK")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISREG")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a regular file.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFREG")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISFIFO")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a FIFO (named pipe).")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFIFO")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISLNK")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a symbolic link.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFLNK")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "S_ISSOCK")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if mode is from a socket.")
(NEWLINE)
(KEYWORD return)
(ID "S_IFMT")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT "==")
(ID "S_IFSOCK")
(NEWLINE)
(DEDENT)
(ID "S_ISUID")
(PUNCT "=")
(LIT 2048)
(NEWLINE)
(ID "S_ISGID")
(PUNCT "=")
(LIT 1024)
(NEWLINE)
(ID "S_ENFMT")
(PUNCT "=")
(ID "S_ISGID")
(NEWLINE)
(ID "S_ISVTX")
(PUNCT "=")
(LIT 512)
(NEWLINE)
(ID "S_IREAD")
(PUNCT "=")
(LIT 256)
(NEWLINE)
(ID "S_IWRITE")
(PUNCT "=")
(LIT 128)
(NEWLINE)
(ID "S_IEXEC")
(PUNCT "=")
(LIT 64)
(NEWLINE)
(ID "S_IRWXU")
(PUNCT "=")
(LIT 448)
(NEWLINE)
(ID "S_IRUSR")
(PUNCT "=")
(LIT 256)
(NEWLINE)
(ID "S_IWUSR")
(PUNCT "=")
(LIT 128)
(NEWLINE)
(ID "S_IXUSR")
(PUNCT "=")
(LIT 64)
(NEWLINE)
(ID "S_IRWXG")
(PUNCT "=")
(LIT 56)
(NEWLINE)
(ID "S_IRGRP")
(PUNCT "=")
(LIT 32)
(NEWLINE)
(ID "S_IWGRP")
(PUNCT "=")
(LIT 16)
(NEWLINE)
(ID "S_IXGRP")
(PUNCT "=")
(LIT 8)
(NEWLINE)
(ID "S_IRWXO")
(PUNCT "=")
(LIT 7)
(NEWLINE)
(ID "S_IROTH")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "S_IWOTH")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "S_IXOTH")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "UF_NODUMP")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "UF_IMMUTABLE")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "UF_APPEND")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "UF_OPAQUE")
(PUNCT "=")
(LIT 8)
(NEWLINE)
(ID "UF_NOUNLINK")
(PUNCT "=")
(LIT 16)
(NEWLINE)
(ID "UF_COMPRESSED")
(PUNCT "=")
(LIT 32)
(NEWLINE)
(ID "UF_HIDDEN")
(PUNCT "=")
(LIT 32768)
(NEWLINE)
(ID "SF_ARCHIVED")
(PUNCT "=")
(LIT 65536)
(NEWLINE)
(ID "SF_IMMUTABLE")
(PUNCT "=")
(LIT 131072)
(NEWLINE)
(ID "SF_APPEND")
(PUNCT "=")
(LIT 262144)
(NEWLINE)
(ID "SF_NOUNLINK")
(PUNCT "=")
(LIT 1048576)
(NEWLINE)
(ID "SF_SNAPSHOT")
(PUNCT "=")
(LIT 2097152)
(NEWLINE)
(ID "_filemode_table")
(PUNCT "=")
(PUNCT "(")
(PUNCT "(")
(PUNCT "(")
(ID "S_IFLNK")
(PUNCT ",")
(LIT "l")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IFREG")
(PUNCT ",")
(LIT "-")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IFBLK")
(PUNCT ",")
(LIT "b")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IFDIR")
(PUNCT ",")
(LIT "d")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IFCHR")
(PUNCT ",")
(LIT "c")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IFIFO")
(PUNCT ",")
(LIT "p")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IRUSR")
(PUNCT ",")
(LIT "r")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IWUSR")
(PUNCT ",")
(LIT "w")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IXUSR")
(PUNCT "|")
(ID "S_ISUID")
(PUNCT ",")
(LIT "s")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_ISUID")
(PUNCT ",")
(LIT "S")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IXUSR")
(PUNCT ",")
(LIT "x")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IRGRP")
(PUNCT ",")
(LIT "r")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IWGRP")
(PUNCT ",")
(LIT "w")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IXGRP")
(PUNCT "|")
(ID "S_ISGID")
(PUNCT ",")
(LIT "s")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_ISGID")
(PUNCT ",")
(LIT "S")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IXGRP")
(PUNCT ",")
(LIT "x")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IROTH")
(PUNCT ",")
(LIT "r")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IWOTH")
(PUNCT ",")
(LIT "w")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(PUNCT "(")
(ID "S_IXOTH")
(PUNCT "|")
(ID "S_ISVTX")
(PUNCT ",")
(LIT "t")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_ISVTX")
(PUNCT ",")
(LIT "T")
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(ID "S_IXOTH")
(PUNCT ",")
(LIT "x")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "filemode")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Convert a file's mode to a string of the form '-rwxrwxrwx'.")
(NEWLINE)
(ID "perm")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "table")
(KEYWORD in)
(ID "_filemode_table")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "bit")
(PUNCT ",")
(ID "char")
(KEYWORD in)
(ID "table")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "mode")
(PUNCT "&")
(ID "bit")
(PUNCT "==")
(ID "bit")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "perm")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "char")
(PUNCT ")")
(NEWLINE)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "perm")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "-")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "perm")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "_stat")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(ENDMARKER)