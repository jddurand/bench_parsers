(LIT "distutils.dep_util\n\nUtility functions for simple, timestamp-based dependency of files\nand groups of files; also, function based entirely on such\ntimestamp dependency analysis.")
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
(KEYWORD def)
(ID "newer")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "target")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return true if 'source' exists and is more recently modified than\n    'target', or if 'source' exists and 'target' doesn't.  Return false if\n    both exist and 'target' is the same age or younger than 'source'.\n    Raise DistutilsFileError if 'source' does not exist.\n    ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "DistutilsFileError")
(PUNCT "(")
(LIT "file '%s' does not exist")
(PUNCT "%")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "abspath")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "target")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD from)
(ID "stat")
(KEYWORD import)
(ID "ST_MTIME")
(NEWLINE)
(ID "mtime1")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(PUNCT "[")
(ID "ST_MTIME")
(PUNCT "]")
(NEWLINE)
(ID "mtime2")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(ID "target")
(PUNCT ")")
(PUNCT "[")
(ID "ST_MTIME")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "mtime1")
(PUNCT ">")
(ID "mtime2")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "newer_pairwise")
(PUNCT "(")
(ID "sources")
(PUNCT ",")
(ID "targets")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Walk two filename lists in parallel, testing if each source is newer\n    than its corresponding target.  Return a pair of lists (sources,\n    targets) where source is newer than target, according to the semantics\n    of 'newer()'.\n    ")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "sources")
(PUNCT ")")
(PUNCT "!=")
(ID "len")
(PUNCT "(")
(ID "targets")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "'sources' and 'targets' must be same length")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "n_sources")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "n_targets")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "sources")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "newer")
(PUNCT "(")
(ID "sources")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT ",")
(ID "targets")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n_sources")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "sources")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "n_targets")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "targets")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "n_sources")
(PUNCT ",")
(ID "n_targets")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "newer_group")
(PUNCT "(")
(ID "sources")
(PUNCT ",")
(ID "target")
(PUNCT ",")
(ID "missing")
(PUNCT "=")
(LIT "error")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return true if 'target' is out-of-date with respect to any file\n    listed in 'sources'.  In other words, if 'target' exists and is newer\n    than every file in 'sources', return false; otherwise return true.\n    'missing' controls what we do when a source file is missing; the\n    default (\"error\") is to blow up with an OSError from inside 'stat()';\n    if it is \"ignore\", we silently drop any missing source files; if it is\n    \"newer\", any missing source files make us assume that 'target' is\n    out-of-date (this is handy in \"dry-run\" mode: it'll make you pretend to\n    carry out commands that wouldn't work because inputs are missing, but\n    that doesn't matter because you're not actually going to run the\n    commands).\n    ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "target")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD from)
(ID "stat")
(KEYWORD import)
(ID "ST_MTIME")
(NEWLINE)
(ID "target_mtime")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(ID "target")
(PUNCT ")")
(PUNCT "[")
(ID "ST_MTIME")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "source")
(KEYWORD in)
(ID "sources")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "missing")
(PUNCT "==")
(LIT "error")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "missing")
(PUNCT "==")
(LIT "ignore")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "missing")
(PUNCT "==")
(LIT "newer")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "source_mtime")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "stat")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(PUNCT "[")
(ID "ST_MTIME")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "source_mtime")
(PUNCT ">")
(ID "target_mtime")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 0)
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)