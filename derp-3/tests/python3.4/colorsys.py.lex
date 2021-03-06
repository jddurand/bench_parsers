(LIT "Conversion functions between RGB and other color systems.\n\nThis modules provides two functions for each color system ABC:\n\n  rgb_to_abc(r, g, b) --> a, b, c\n  abc_to_rgb(a, b, c) --> r, g, b\n\nAll inputs and outputs are triples of floats in the range [0.0...1.0]\n(with the exception of I and Q, which covers a slightly larger range).\nInputs outside the valid range may cause exceptions or invalid outputs.\n\nSupported color systems:\nRGB: Red, Green, Blue components\nYIQ: Luminance, Chrominance (used by composite video signals)\nHLS: Hue, Luminance, Saturation\nHSV: Hue, Saturation, Value\n")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "rgb_to_yiq")
(PUNCT ",")
(LIT "yiq_to_rgb")
(PUNCT ",")
(LIT "rgb_to_hls")
(PUNCT ",")
(LIT "hls_to_rgb")
(PUNCT ",")
(LIT "rgb_to_hsv")
(PUNCT ",")
(LIT "hsv_to_rgb")
(PUNCT "]")
(NEWLINE)
(ID "ONE_THIRD")
(PUNCT "=")
(LIT 1.0)
(PUNCT "/")
(LIT 3.0)
(NEWLINE)
(ID "ONE_SIXTH")
(PUNCT "=")
(LIT 1.0)
(PUNCT "/")
(LIT 6.0)
(NEWLINE)
(ID "TWO_THIRD")
(PUNCT "=")
(LIT 2.0)
(PUNCT "/")
(LIT 3.0)
(NEWLINE)
(KEYWORD def)
(ID "rgb_to_yiq")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "y")
(PUNCT "=")
(LIT 0.3)
(PUNCT "*")
(ID "r")
(PUNCT "+")
(LIT 0.59)
(PUNCT "*")
(ID "g")
(PUNCT "+")
(LIT 0.11)
(PUNCT "*")
(ID "b")
(NEWLINE)
(ID "i")
(PUNCT "=")
(LIT 0.74)
(PUNCT "*")
(PUNCT "(")
(ID "r")
(PUNCT "-")
(ID "y")
(PUNCT ")")
(PUNCT "-")
(LIT 0.27)
(PUNCT "*")
(PUNCT "(")
(ID "b")
(PUNCT "-")
(ID "y")
(PUNCT ")")
(NEWLINE)
(ID "q")
(PUNCT "=")
(LIT 0.48)
(PUNCT "*")
(PUNCT "(")
(ID "r")
(PUNCT "-")
(ID "y")
(PUNCT ")")
(PUNCT "+")
(LIT 0.41)
(PUNCT "*")
(PUNCT "(")
(ID "b")
(PUNCT "-")
(ID "y")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "y")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "q")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "yiq_to_rgb")
(PUNCT "(")
(ID "y")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "q")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "r")
(PUNCT "=")
(ID "y")
(PUNCT "+")
(LIT 0.9468822170900693)
(PUNCT "*")
(ID "i")
(PUNCT "+")
(LIT 0.6235565819861433)
(PUNCT "*")
(ID "q")
(NEWLINE)
(ID "g")
(PUNCT "=")
(ID "y")
(PUNCT "-")
(LIT 0.27478764629897834)
(PUNCT "*")
(ID "i")
(PUNCT "-")
(LIT 0.6356910791873801)
(PUNCT "*")
(ID "q")
(NEWLINE)
(ID "b")
(PUNCT "=")
(ID "y")
(PUNCT "-")
(LIT 1.1085450346420322)
(PUNCT "*")
(ID "i")
(PUNCT "+")
(LIT 1.7090069284064666)
(PUNCT "*")
(ID "q")
(NEWLINE)
(KEYWORD if)
(ID "r")
(PUNCT "<")
(LIT 0.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "r")
(PUNCT "=")
(LIT 0.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "g")
(PUNCT "<")
(LIT 0.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "g")
(PUNCT "=")
(LIT 0.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "b")
(PUNCT "<")
(LIT 0.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "b")
(PUNCT "=")
(LIT 0.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "r")
(PUNCT ">")
(LIT 1.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "r")
(PUNCT "=")
(LIT 1.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "g")
(PUNCT ">")
(LIT 1.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "g")
(PUNCT "=")
(LIT 1.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "b")
(PUNCT ">")
(LIT 1.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "b")
(PUNCT "=")
(LIT 1.0)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "rgb_to_hls")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "maxc")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(NEWLINE)
(ID "minc")
(PUNCT "=")
(ID "min")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(NEWLINE)
(ID "l")
(PUNCT "=")
(PUNCT "(")
(ID "minc")
(PUNCT "+")
(ID "maxc")
(PUNCT ")")
(PUNCT "/")
(LIT 2.0)
(NEWLINE)
(KEYWORD if)
(ID "minc")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 0.0)
(PUNCT ",")
(ID "l")
(PUNCT ",")
(LIT 0.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "l")
(PUNCT "<=")
(LIT 0.5)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "+")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(LIT 2.0)
(PUNCT "-")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "rc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "r")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(ID "gc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "g")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(ID "bc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "b")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "r")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "bc")
(PUNCT "-")
(ID "gc")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "g")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(LIT 2.0)
(PUNCT "+")
(ID "rc")
(PUNCT "-")
(ID "bc")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(LIT 4.0)
(PUNCT "+")
(ID "gc")
(PUNCT "-")
(ID "rc")
(NEWLINE)
(DEDENT)
(ID "h")
(PUNCT "=")
(PUNCT "(")
(ID "h")
(PUNCT "/")
(LIT 6.0)
(PUNCT ")")
(PUNCT "%")
(LIT 1.0)
(NEWLINE)
(KEYWORD return)
(ID "h")
(PUNCT ",")
(ID "l")
(PUNCT ",")
(ID "s")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "hls_to_rgb")
(PUNCT "(")
(ID "h")
(PUNCT ",")
(ID "l")
(PUNCT ",")
(ID "s")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "s")
(PUNCT "==")
(LIT 0.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "l")
(PUNCT ",")
(ID "l")
(PUNCT ",")
(ID "l")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "l")
(PUNCT "<=")
(LIT 0.5)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m2")
(PUNCT "=")
(ID "l")
(PUNCT "*")
(PUNCT "(")
(LIT 1.0)
(PUNCT "+")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m2")
(PUNCT "=")
(ID "l")
(PUNCT "+")
(ID "s")
(PUNCT "-")
(PUNCT "(")
(ID "l")
(PUNCT "*")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "m1")
(PUNCT "=")
(LIT 2.0)
(PUNCT "*")
(ID "l")
(PUNCT "-")
(ID "m2")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "_v")
(PUNCT "(")
(ID "m1")
(PUNCT ",")
(ID "m2")
(PUNCT ",")
(ID "h")
(PUNCT "+")
(ID "ONE_THIRD")
(PUNCT ")")
(PUNCT ",")
(ID "_v")
(PUNCT "(")
(ID "m1")
(PUNCT ",")
(ID "m2")
(PUNCT ",")
(ID "h")
(PUNCT ")")
(PUNCT ",")
(ID "_v")
(PUNCT "(")
(ID "m1")
(PUNCT ",")
(ID "m2")
(PUNCT ",")
(ID "h")
(PUNCT "-")
(ID "ONE_THIRD")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_v")
(PUNCT "(")
(ID "m1")
(PUNCT ",")
(ID "m2")
(PUNCT ",")
(ID "hue")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "hue")
(PUNCT "=")
(ID "hue")
(PUNCT "%")
(LIT 1.0)
(NEWLINE)
(KEYWORD if)
(ID "hue")
(PUNCT "<")
(ID "ONE_SIXTH")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "m1")
(PUNCT "+")
(PUNCT "(")
(ID "m2")
(PUNCT "-")
(ID "m1")
(PUNCT ")")
(PUNCT "*")
(ID "hue")
(PUNCT "*")
(LIT 6.0)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "hue")
(PUNCT "<")
(LIT 0.5)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "m2")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "hue")
(PUNCT "<")
(ID "TWO_THIRD")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "m1")
(PUNCT "+")
(PUNCT "(")
(ID "m2")
(PUNCT "-")
(ID "m1")
(PUNCT ")")
(PUNCT "*")
(PUNCT "(")
(ID "TWO_THIRD")
(PUNCT "-")
(ID "hue")
(PUNCT ")")
(PUNCT "*")
(LIT 6.0)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "m1")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "rgb_to_hsv")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "maxc")
(PUNCT "=")
(ID "max")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(NEWLINE)
(ID "minc")
(PUNCT "=")
(ID "min")
(PUNCT "(")
(ID "r")
(PUNCT ",")
(ID "g")
(PUNCT ",")
(ID "b")
(PUNCT ")")
(NEWLINE)
(ID "v")
(PUNCT "=")
(ID "maxc")
(NEWLINE)
(KEYWORD if)
(ID "minc")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT 0.0)
(PUNCT ",")
(LIT 0.0)
(PUNCT ",")
(ID "v")
(NEWLINE)
(DEDENT)
(ID "s")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(PUNCT "/")
(ID "maxc")
(NEWLINE)
(ID "rc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "r")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(ID "gc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "g")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(ID "bc")
(PUNCT "=")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "b")
(PUNCT ")")
(PUNCT "/")
(PUNCT "(")
(ID "maxc")
(PUNCT "-")
(ID "minc")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "r")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(ID "bc")
(PUNCT "-")
(ID "gc")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "g")
(PUNCT "==")
(ID "maxc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(LIT 2.0)
(PUNCT "+")
(ID "rc")
(PUNCT "-")
(ID "bc")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h")
(PUNCT "=")
(LIT 4.0)
(PUNCT "+")
(ID "gc")
(PUNCT "-")
(ID "rc")
(NEWLINE)
(DEDENT)
(ID "h")
(PUNCT "=")
(PUNCT "(")
(ID "h")
(PUNCT "/")
(LIT 6.0)
(PUNCT ")")
(PUNCT "%")
(LIT 1.0)
(NEWLINE)
(KEYWORD return)
(ID "h")
(PUNCT ",")
(ID "s")
(PUNCT ",")
(ID "v")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "hsv_to_rgb")
(PUNCT "(")
(ID "h")
(PUNCT ",")
(ID "s")
(PUNCT ",")
(ID "v")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "s")
(PUNCT "==")
(LIT 0.0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "v")
(PUNCT ",")
(ID "v")
(PUNCT ",")
(ID "v")
(NEWLINE)
(DEDENT)
(ID "i")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "h")
(PUNCT "*")
(LIT 6.0)
(PUNCT ")")
(NEWLINE)
(ID "f")
(PUNCT "=")
(PUNCT "(")
(ID "h")
(PUNCT "*")
(LIT 6.0)
(PUNCT ")")
(PUNCT "-")
(ID "i")
(NEWLINE)
(ID "p")
(PUNCT "=")
(ID "v")
(PUNCT "*")
(PUNCT "(")
(LIT 1.0)
(PUNCT "-")
(ID "s")
(PUNCT ")")
(NEWLINE)
(ID "q")
(PUNCT "=")
(ID "v")
(PUNCT "*")
(PUNCT "(")
(LIT 1.0)
(PUNCT "-")
(ID "s")
(PUNCT "*")
(ID "f")
(PUNCT ")")
(NEWLINE)
(ID "t")
(PUNCT "=")
(ID "v")
(PUNCT "*")
(PUNCT "(")
(LIT 1.0)
(PUNCT "-")
(ID "s")
(PUNCT "*")
(PUNCT "(")
(LIT 1.0)
(PUNCT "-")
(ID "f")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "i")
(PUNCT "=")
(ID "i")
(PUNCT "%")
(LIT 6)
(NEWLINE)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "v")
(PUNCT ",")
(ID "t")
(PUNCT ",")
(ID "p")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "q")
(PUNCT ",")
(ID "v")
(PUNCT ",")
(ID "p")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "p")
(PUNCT ",")
(ID "v")
(PUNCT ",")
(ID "t")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 3)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "p")
(PUNCT ",")
(ID "q")
(PUNCT ",")
(ID "v")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 4)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "t")
(PUNCT ",")
(ID "p")
(PUNCT ",")
(ID "v")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(LIT 5)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "v")
(PUNCT ",")
(ID "p")
(PUNCT ",")
(ID "q")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
