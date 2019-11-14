(LIT " Python Character Mapping Codec generated from 'VENDORS/APPLE/ARABIC.TXT' with gencodec.py.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "codecs")
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
(KEYWORD def)
(ID "encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(LIT "strict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_encode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT ",")
(ID "encoding_map")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "decode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(LIT "strict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_decode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT ",")
(ID "decoding_table")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "IncrementalEncoder")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalEncoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "final")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_encode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "errors")
(PUNCT ",")
(ID "encoding_map")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "IncrementalDecoder")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalDecoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "decode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "final")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_decode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "errors")
(PUNCT ",")
(ID "decoding_table")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "StreamWriter")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamWriter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "StreamReader")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamReader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
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
(LIT "mac-arabic")
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
(ID "decoding_map")
(PUNCT "=")
(ID "codecs")
(PUNCT ".")
(ID "make_identity_dict")
(PUNCT "(")
(ID "range")
(PUNCT "(")
(LIT 256)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "decoding_map")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(PUNCT "{")
(LIT 128)
(PUNCT ":")
(LIT 196)
(PUNCT ",")
(LIT 129)
(PUNCT ":")
(LIT 160)
(PUNCT ",")
(LIT 130)
(PUNCT ":")
(LIT 199)
(PUNCT ",")
(LIT 131)
(PUNCT ":")
(LIT 201)
(PUNCT ",")
(LIT 132)
(PUNCT ":")
(LIT 209)
(PUNCT ",")
(LIT 133)
(PUNCT ":")
(LIT 214)
(PUNCT ",")
(LIT 134)
(PUNCT ":")
(LIT 220)
(PUNCT ",")
(LIT 135)
(PUNCT ":")
(LIT 225)
(PUNCT ",")
(LIT 136)
(PUNCT ":")
(LIT 224)
(PUNCT ",")
(LIT 137)
(PUNCT ":")
(LIT 226)
(PUNCT ",")
(LIT 138)
(PUNCT ":")
(LIT 228)
(PUNCT ",")
(LIT 139)
(PUNCT ":")
(LIT 1722)
(PUNCT ",")
(LIT 140)
(PUNCT ":")
(LIT 171)
(PUNCT ",")
(LIT 141)
(PUNCT ":")
(LIT 231)
(PUNCT ",")
(LIT 142)
(PUNCT ":")
(LIT 233)
(PUNCT ",")
(LIT 143)
(PUNCT ":")
(LIT 232)
(PUNCT ",")
(LIT 144)
(PUNCT ":")
(LIT 234)
(PUNCT ",")
(LIT 145)
(PUNCT ":")
(LIT 235)
(PUNCT ",")
(LIT 146)
(PUNCT ":")
(LIT 237)
(PUNCT ",")
(LIT 147)
(PUNCT ":")
(LIT 8230)
(PUNCT ",")
(LIT 148)
(PUNCT ":")
(LIT 238)
(PUNCT ",")
(LIT 149)
(PUNCT ":")
(LIT 239)
(PUNCT ",")
(LIT 150)
(PUNCT ":")
(LIT 241)
(PUNCT ",")
(LIT 151)
(PUNCT ":")
(LIT 243)
(PUNCT ",")
(LIT 152)
(PUNCT ":")
(LIT 187)
(PUNCT ",")
(LIT 153)
(PUNCT ":")
(LIT 244)
(PUNCT ",")
(LIT 154)
(PUNCT ":")
(LIT 246)
(PUNCT ",")
(LIT 155)
(PUNCT ":")
(LIT 247)
(PUNCT ",")
(LIT 156)
(PUNCT ":")
(LIT 250)
(PUNCT ",")
(LIT 157)
(PUNCT ":")
(LIT 249)
(PUNCT ",")
(LIT 158)
(PUNCT ":")
(LIT 251)
(PUNCT ",")
(LIT 159)
(PUNCT ":")
(LIT 252)
(PUNCT ",")
(LIT 160)
(PUNCT ":")
(LIT 32)
(PUNCT ",")
(LIT 161)
(PUNCT ":")
(LIT 33)
(PUNCT ",")
(LIT 162)
(PUNCT ":")
(LIT 34)
(PUNCT ",")
(LIT 163)
(PUNCT ":")
(LIT 35)
(PUNCT ",")
(LIT 164)
(PUNCT ":")
(LIT 36)
(PUNCT ",")
(LIT 165)
(PUNCT ":")
(LIT 1642)
(PUNCT ",")
(LIT 166)
(PUNCT ":")
(LIT 38)
(PUNCT ",")
(LIT 167)
(PUNCT ":")
(LIT 39)
(PUNCT ",")
(LIT 168)
(PUNCT ":")
(LIT 40)
(PUNCT ",")
(LIT 169)
(PUNCT ":")
(LIT 41)
(PUNCT ",")
(LIT 170)
(PUNCT ":")
(LIT 42)
(PUNCT ",")
(LIT 171)
(PUNCT ":")
(LIT 43)
(PUNCT ",")
(LIT 172)
(PUNCT ":")
(LIT 1548)
(PUNCT ",")
(LIT 173)
(PUNCT ":")
(LIT 45)
(PUNCT ",")
(LIT 174)
(PUNCT ":")
(LIT 46)
(PUNCT ",")
(LIT 175)
(PUNCT ":")
(LIT 47)
(PUNCT ",")
(LIT 176)
(PUNCT ":")
(LIT 1632)
(PUNCT ",")
(LIT 177)
(PUNCT ":")
(LIT 1633)
(PUNCT ",")
(LIT 178)
(PUNCT ":")
(LIT 1634)
(PUNCT ",")
(LIT 179)
(PUNCT ":")
(LIT 1635)
(PUNCT ",")
(LIT 180)
(PUNCT ":")
(LIT 1636)
(PUNCT ",")
(LIT 181)
(PUNCT ":")
(LIT 1637)
(PUNCT ",")
(LIT 182)
(PUNCT ":")
(LIT 1638)
(PUNCT ",")
(LIT 183)
(PUNCT ":")
(LIT 1639)
(PUNCT ",")
(LIT 184)
(PUNCT ":")
(LIT 1640)
(PUNCT ",")
(LIT 185)
(PUNCT ":")
(LIT 1641)
(PUNCT ",")
(LIT 186)
(PUNCT ":")
(LIT 58)
(PUNCT ",")
(LIT 187)
(PUNCT ":")
(LIT 1563)
(PUNCT ",")
(LIT 188)
(PUNCT ":")
(LIT 60)
(PUNCT ",")
(LIT 189)
(PUNCT ":")
(LIT 61)
(PUNCT ",")
(LIT 190)
(PUNCT ":")
(LIT 62)
(PUNCT ",")
(LIT 191)
(PUNCT ":")
(LIT 1567)
(PUNCT ",")
(LIT 192)
(PUNCT ":")
(LIT 10058)
(PUNCT ",")
(LIT 193)
(PUNCT ":")
(LIT 1569)
(PUNCT ",")
(LIT 194)
(PUNCT ":")
(LIT 1570)
(PUNCT ",")
(LIT 195)
(PUNCT ":")
(LIT 1571)
(PUNCT ",")
(LIT 196)
(PUNCT ":")
(LIT 1572)
(PUNCT ",")
(LIT 197)
(PUNCT ":")
(LIT 1573)
(PUNCT ",")
(LIT 198)
(PUNCT ":")
(LIT 1574)
(PUNCT ",")
(LIT 199)
(PUNCT ":")
(LIT 1575)
(PUNCT ",")
(LIT 200)
(PUNCT ":")
(LIT 1576)
(PUNCT ",")
(LIT 201)
(PUNCT ":")
(LIT 1577)
(PUNCT ",")
(LIT 202)
(PUNCT ":")
(LIT 1578)
(PUNCT ",")
(LIT 203)
(PUNCT ":")
(LIT 1579)
(PUNCT ",")
(LIT 204)
(PUNCT ":")
(LIT 1580)
(PUNCT ",")
(LIT 205)
(PUNCT ":")
(LIT 1581)
(PUNCT ",")
(LIT 206)
(PUNCT ":")
(LIT 1582)
(PUNCT ",")
(LIT 207)
(PUNCT ":")
(LIT 1583)
(PUNCT ",")
(LIT 208)
(PUNCT ":")
(LIT 1584)
(PUNCT ",")
(LIT 209)
(PUNCT ":")
(LIT 1585)
(PUNCT ",")
(LIT 210)
(PUNCT ":")
(LIT 1586)
(PUNCT ",")
(LIT 211)
(PUNCT ":")
(LIT 1587)
(PUNCT ",")
(LIT 212)
(PUNCT ":")
(LIT 1588)
(PUNCT ",")
(LIT 213)
(PUNCT ":")
(LIT 1589)
(PUNCT ",")
(LIT 214)
(PUNCT ":")
(LIT 1590)
(PUNCT ",")
(LIT 215)
(PUNCT ":")
(LIT 1591)
(PUNCT ",")
(LIT 216)
(PUNCT ":")
(LIT 1592)
(PUNCT ",")
(LIT 217)
(PUNCT ":")
(LIT 1593)
(PUNCT ",")
(LIT 218)
(PUNCT ":")
(LIT 1594)
(PUNCT ",")
(LIT 219)
(PUNCT ":")
(LIT 91)
(PUNCT ",")
(LIT 220)
(PUNCT ":")
(LIT 92)
(PUNCT ",")
(LIT 221)
(PUNCT ":")
(LIT 93)
(PUNCT ",")
(LIT 222)
(PUNCT ":")
(LIT 94)
(PUNCT ",")
(LIT 223)
(PUNCT ":")
(LIT 95)
(PUNCT ",")
(LIT 224)
(PUNCT ":")
(LIT 1600)
(PUNCT ",")
(LIT 225)
(PUNCT ":")
(LIT 1601)
(PUNCT ",")
(LIT 226)
(PUNCT ":")
(LIT 1602)
(PUNCT ",")
(LIT 227)
(PUNCT ":")
(LIT 1603)
(PUNCT ",")
(LIT 228)
(PUNCT ":")
(LIT 1604)
(PUNCT ",")
(LIT 229)
(PUNCT ":")
(LIT 1605)
(PUNCT ",")
(LIT 230)
(PUNCT ":")
(LIT 1606)
(PUNCT ",")
(LIT 231)
(PUNCT ":")
(LIT 1607)
(PUNCT ",")
(LIT 232)
(PUNCT ":")
(LIT 1608)
(PUNCT ",")
(LIT 233)
(PUNCT ":")
(LIT 1609)
(PUNCT ",")
(LIT 234)
(PUNCT ":")
(LIT 1610)
(PUNCT ",")
(LIT 235)
(PUNCT ":")
(LIT 1611)
(PUNCT ",")
(LIT 236)
(PUNCT ":")
(LIT 1612)
(PUNCT ",")
(LIT 237)
(PUNCT ":")
(LIT 1613)
(PUNCT ",")
(LIT 238)
(PUNCT ":")
(LIT 1614)
(PUNCT ",")
(LIT 239)
(PUNCT ":")
(LIT 1615)
(PUNCT ",")
(LIT 240)
(PUNCT ":")
(LIT 1616)
(PUNCT ",")
(LIT 241)
(PUNCT ":")
(LIT 1617)
(PUNCT ",")
(LIT 242)
(PUNCT ":")
(LIT 1618)
(PUNCT ",")
(LIT 243)
(PUNCT ":")
(LIT 1662)
(PUNCT ",")
(LIT 244)
(PUNCT ":")
(LIT 1657)
(PUNCT ",")
(LIT 245)
(PUNCT ":")
(LIT 1670)
(PUNCT ",")
(LIT 246)
(PUNCT ":")
(LIT 1749)
(PUNCT ",")
(LIT 247)
(PUNCT ":")
(LIT 1700)
(PUNCT ",")
(LIT 248)
(PUNCT ":")
(LIT 1711)
(PUNCT ",")
(LIT 249)
(PUNCT ":")
(LIT 1672)
(PUNCT ",")
(LIT 250)
(PUNCT ":")
(LIT 1681)
(PUNCT ",")
(LIT 251)
(PUNCT ":")
(LIT 123)
(PUNCT ",")
(LIT 252)
(PUNCT ":")
(LIT 124)
(PUNCT ",")
(LIT 253)
(PUNCT ":")
(LIT 125)
(PUNCT ",")
(LIT 254)
(PUNCT ":")
(LIT 1688)
(PUNCT ",")
(LIT 255)
(PUNCT ":")
(LIT 1746)
(PUNCT ",")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "decoding_table")
(PUNCT "=")
(PUNCT "(")
(LIT "\u0000")
(LIT "\u0001")
(LIT "\u0002")
(LIT "\u0003")
(LIT "\u0004")
(LIT "\u0005")
(LIT "\u0006")
(LIT "\a")
(LIT "\b")
(LIT "\t")
(LIT "\n")
(LIT "\v")
(LIT "\f")
(LIT "\r")
(LIT "\u000E")
(LIT "\u000F")
(LIT "\u0010")
(LIT "\u0011")
(LIT "\u0012")
(LIT "\u0013")
(LIT "\u0014")
(LIT "\u0015")
(LIT "\u0016")
(LIT "\u0017")
(LIT "\u0018")
(LIT "\u0019")
(LIT "\u001A")
(LIT "\e")
(LIT "\u001C")
(LIT "\u001D")
(LIT "\u001E")
(LIT "\u001F")
(LIT " ")
(LIT "!")
(LIT "\"")
(LIT "#")
(LIT "$")
(LIT "%")
(LIT "&")
(LIT "'")
(LIT "(")
(LIT ")")
(LIT "*")
(LIT "+")
(LIT ",")
(LIT "-")
(LIT ".")
(LIT "/")
(LIT "0")
(LIT "1")
(LIT "2")
(LIT "3")
(LIT "4")
(LIT "5")
(LIT "6")
(LIT "7")
(LIT "8")
(LIT "9")
(LIT ":")
(LIT ";")
(LIT "<")
(LIT "=")
(LIT ">")
(LIT "?")
(LIT "@")
(LIT "A")
(LIT "B")
(LIT "C")
(LIT "D")
(LIT "E")
(LIT "F")
(LIT "G")
(LIT "H")
(LIT "I")
(LIT "J")
(LIT "K")
(LIT "L")
(LIT "M")
(LIT "N")
(LIT "O")
(LIT "P")
(LIT "Q")
(LIT "R")
(LIT "S")
(LIT "T")
(LIT "U")
(LIT "V")
(LIT "W")
(LIT "X")
(LIT "Y")
(LIT "Z")
(LIT "[")
(LIT "\\")
(LIT "]")
(LIT "^")
(LIT "_")
(LIT "`")
(LIT "a")
(LIT "b")
(LIT "c")
(LIT "d")
(LIT "e")
(LIT "f")
(LIT "g")
(LIT "h")
(LIT "i")
(LIT "j")
(LIT "k")
(LIT "l")
(LIT "m")
(LIT "n")
(LIT "o")
(LIT "p")
(LIT "q")
(LIT "r")
(LIT "s")
(LIT "t")
(LIT "u")
(LIT "v")
(LIT "w")
(LIT "x")
(LIT "y")
(LIT "z")
(LIT "{")
(LIT "|")
(LIT "}")
(LIT "~")
(LIT "\u007F")
(LIT "Ä")
(LIT " ")
(LIT "Ç")
(LIT "É")
(LIT "Ñ")
(LIT "Ö")
(LIT "Ü")
(LIT "á")
(LIT "à")
(LIT "â")
(LIT "ä")
(LIT "ں")
(LIT "«")
(LIT "ç")
(LIT "é")
(LIT "è")
(LIT "ê")
(LIT "ë")
(LIT "í")
(LIT "…")
(LIT "î")
(LIT "ï")
(LIT "ñ")
(LIT "ó")
(LIT "»")
(LIT "ô")
(LIT "ö")
(LIT "÷")
(LIT "ú")
(LIT "ù")
(LIT "û")
(LIT "ü")
(LIT " ")
(LIT "!")
(LIT "\"")
(LIT "#")
(LIT "$")
(LIT "٪")
(LIT "&")
(LIT "'")
(LIT "(")
(LIT ")")
(LIT "*")
(LIT "+")
(LIT "،")
(LIT "-")
(LIT ".")
(LIT "/")
(LIT "٠")
(LIT "١")
(LIT "٢")
(LIT "٣")
(LIT "٤")
(LIT "٥")
(LIT "٦")
(LIT "٧")
(LIT "٨")
(LIT "٩")
(LIT ":")
(LIT "؛")
(LIT "<")
(LIT "=")
(LIT ">")
(LIT "؟")
(LIT "❊")
(LIT "ء")
(LIT "آ")
(LIT "أ")
(LIT "ؤ")
(LIT "إ")
(LIT "ئ")
(LIT "ا")
(LIT "ب")
(LIT "ة")
(LIT "ت")
(LIT "ث")
(LIT "ج")
(LIT "ح")
(LIT "خ")
(LIT "د")
(LIT "ذ")
(LIT "ر")
(LIT "ز")
(LIT "س")
(LIT "ش")
(LIT "ص")
(LIT "ض")
(LIT "ط")
(LIT "ظ")
(LIT "ع")
(LIT "غ")
(LIT "[")
(LIT "\\")
(LIT "]")
(LIT "^")
(LIT "_")
(LIT "ـ")
(LIT "ف")
(LIT "ق")
(LIT "ك")
(LIT "ل")
(LIT "م")
(LIT "ن")
(LIT "ه")
(LIT "و")
(LIT "ى")
(LIT "ي")
(LIT "ً")
(LIT "ٌ")
(LIT "ٍ")
(LIT "َ")
(LIT "ُ")
(LIT "ِ")
(LIT "ّ")
(LIT "ْ")
(LIT "پ")
(LIT "ٹ")
(LIT "چ")
(LIT "ە")
(LIT "ڤ")
(LIT "گ")
(LIT "ڈ")
(LIT "ڑ")
(LIT "{")
(LIT "|")
(LIT "}")
(LIT "ژ")
(LIT "ے")
(PUNCT ")")
(NEWLINE)
(ID "encoding_map")
(PUNCT "=")
(PUNCT "{")
(LIT 0)
(PUNCT ":")
(LIT 0)
(PUNCT ",")
(LIT 1)
(PUNCT ":")
(LIT 1)
(PUNCT ",")
(LIT 2)
(PUNCT ":")
(LIT 2)
(PUNCT ",")
(LIT 3)
(PUNCT ":")
(LIT 3)
(PUNCT ",")
(LIT 4)
(PUNCT ":")
(LIT 4)
(PUNCT ",")
(LIT 5)
(PUNCT ":")
(LIT 5)
(PUNCT ",")
(LIT 6)
(PUNCT ":")
(LIT 6)
(PUNCT ",")
(LIT 7)
(PUNCT ":")
(LIT 7)
(PUNCT ",")
(LIT 8)
(PUNCT ":")
(LIT 8)
(PUNCT ",")
(LIT 9)
(PUNCT ":")
(LIT 9)
(PUNCT ",")
(LIT 10)
(PUNCT ":")
(LIT 10)
(PUNCT ",")
(LIT 11)
(PUNCT ":")
(LIT 11)
(PUNCT ",")
(LIT 12)
(PUNCT ":")
(LIT 12)
(PUNCT ",")
(LIT 13)
(PUNCT ":")
(LIT 13)
(PUNCT ",")
(LIT 14)
(PUNCT ":")
(LIT 14)
(PUNCT ",")
(LIT 15)
(PUNCT ":")
(LIT 15)
(PUNCT ",")
(LIT 16)
(PUNCT ":")
(LIT 16)
(PUNCT ",")
(LIT 17)
(PUNCT ":")
(LIT 17)
(PUNCT ",")
(LIT 18)
(PUNCT ":")
(LIT 18)
(PUNCT ",")
(LIT 19)
(PUNCT ":")
(LIT 19)
(PUNCT ",")
(LIT 20)
(PUNCT ":")
(LIT 20)
(PUNCT ",")
(LIT 21)
(PUNCT ":")
(LIT 21)
(PUNCT ",")
(LIT 22)
(PUNCT ":")
(LIT 22)
(PUNCT ",")
(LIT 23)
(PUNCT ":")
(LIT 23)
(PUNCT ",")
(LIT 24)
(PUNCT ":")
(LIT 24)
(PUNCT ",")
(LIT 25)
(PUNCT ":")
(LIT 25)
(PUNCT ",")
(LIT 26)
(PUNCT ":")
(LIT 26)
(PUNCT ",")
(LIT 27)
(PUNCT ":")
(LIT 27)
(PUNCT ",")
(LIT 28)
(PUNCT ":")
(LIT 28)
(PUNCT ",")
(LIT 29)
(PUNCT ":")
(LIT 29)
(PUNCT ",")
(LIT 30)
(PUNCT ":")
(LIT 30)
(PUNCT ",")
(LIT 31)
(PUNCT ":")
(LIT 31)
(PUNCT ",")
(LIT 32)
(PUNCT ":")
(LIT 32)
(PUNCT ",")
(LIT 32)
(PUNCT ":")
(LIT 160)
(PUNCT ",")
(LIT 33)
(PUNCT ":")
(LIT 33)
(PUNCT ",")
(LIT 33)
(PUNCT ":")
(LIT 161)
(PUNCT ",")
(LIT 34)
(PUNCT ":")
(LIT 34)
(PUNCT ",")
(LIT 34)
(PUNCT ":")
(LIT 162)
(PUNCT ",")
(LIT 35)
(PUNCT ":")
(LIT 35)
(PUNCT ",")
(LIT 35)
(PUNCT ":")
(LIT 163)
(PUNCT ",")
(LIT 36)
(PUNCT ":")
(LIT 36)
(PUNCT ",")
(LIT 36)
(PUNCT ":")
(LIT 164)
(PUNCT ",")
(LIT 37)
(PUNCT ":")
(LIT 37)
(PUNCT ",")
(LIT 38)
(PUNCT ":")
(LIT 38)
(PUNCT ",")
(LIT 38)
(PUNCT ":")
(LIT 166)
(PUNCT ",")
(LIT 39)
(PUNCT ":")
(LIT 39)
(PUNCT ",")
(LIT 39)
(PUNCT ":")
(LIT 167)
(PUNCT ",")
(LIT 40)
(PUNCT ":")
(LIT 40)
(PUNCT ",")
(LIT 40)
(PUNCT ":")
(LIT 168)
(PUNCT ",")
(LIT 41)
(PUNCT ":")
(LIT 41)
(PUNCT ",")
(LIT 41)
(PUNCT ":")
(LIT 169)
(PUNCT ",")
(LIT 42)
(PUNCT ":")
(LIT 42)
(PUNCT ",")
(LIT 42)
(PUNCT ":")
(LIT 170)
(PUNCT ",")
(LIT 43)
(PUNCT ":")
(LIT 43)
(PUNCT ",")
(LIT 43)
(PUNCT ":")
(LIT 171)
(PUNCT ",")
(LIT 44)
(PUNCT ":")
(LIT 44)
(PUNCT ",")
(LIT 45)
(PUNCT ":")
(LIT 45)
(PUNCT ",")
(LIT 45)
(PUNCT ":")
(LIT 173)
(PUNCT ",")
(LIT 46)
(PUNCT ":")
(LIT 46)
(PUNCT ",")
(LIT 46)
(PUNCT ":")
(LIT 174)
(PUNCT ",")
(LIT 47)
(PUNCT ":")
(LIT 47)
(PUNCT ",")
(LIT 47)
(PUNCT ":")
(LIT 175)
(PUNCT ",")
(LIT 48)
(PUNCT ":")
(LIT 48)
(PUNCT ",")
(LIT 49)
(PUNCT ":")
(LIT 49)
(PUNCT ",")
(LIT 50)
(PUNCT ":")
(LIT 50)
(PUNCT ",")
(LIT 51)
(PUNCT ":")
(LIT 51)
(PUNCT ",")
(LIT 52)
(PUNCT ":")
(LIT 52)
(PUNCT ",")
(LIT 53)
(PUNCT ":")
(LIT 53)
(PUNCT ",")
(LIT 54)
(PUNCT ":")
(LIT 54)
(PUNCT ",")
(LIT 55)
(PUNCT ":")
(LIT 55)
(PUNCT ",")
(LIT 56)
(PUNCT ":")
(LIT 56)
(PUNCT ",")
(LIT 57)
(PUNCT ":")
(LIT 57)
(PUNCT ",")
(LIT 58)
(PUNCT ":")
(LIT 58)
(PUNCT ",")
(LIT 58)
(PUNCT ":")
(LIT 186)
(PUNCT ",")
(LIT 59)
(PUNCT ":")
(LIT 59)
(PUNCT ",")
(LIT 60)
(PUNCT ":")
(LIT 60)
(PUNCT ",")
(LIT 60)
(PUNCT ":")
(LIT 188)
(PUNCT ",")
(LIT 61)
(PUNCT ":")
(LIT 61)
(PUNCT ",")
(LIT 61)
(PUNCT ":")
(LIT 189)
(PUNCT ",")
(LIT 62)
(PUNCT ":")
(LIT 62)
(PUNCT ",")
(LIT 62)
(PUNCT ":")
(LIT 190)
(PUNCT ",")
(LIT 63)
(PUNCT ":")
(LIT 63)
(PUNCT ",")
(LIT 64)
(PUNCT ":")
(LIT 64)
(PUNCT ",")
(LIT 65)
(PUNCT ":")
(LIT 65)
(PUNCT ",")
(LIT 66)
(PUNCT ":")
(LIT 66)
(PUNCT ",")
(LIT 67)
(PUNCT ":")
(LIT 67)
(PUNCT ",")
(LIT 68)
(PUNCT ":")
(LIT 68)
(PUNCT ",")
(LIT 69)
(PUNCT ":")
(LIT 69)
(PUNCT ",")
(LIT 70)
(PUNCT ":")
(LIT 70)
(PUNCT ",")
(LIT 71)
(PUNCT ":")
(LIT 71)
(PUNCT ",")
(LIT 72)
(PUNCT ":")
(LIT 72)
(PUNCT ",")
(LIT 73)
(PUNCT ":")
(LIT 73)
(PUNCT ",")
(LIT 74)
(PUNCT ":")
(LIT 74)
(PUNCT ",")
(LIT 75)
(PUNCT ":")
(LIT 75)
(PUNCT ",")
(LIT 76)
(PUNCT ":")
(LIT 76)
(PUNCT ",")
(LIT 77)
(PUNCT ":")
(LIT 77)
(PUNCT ",")
(LIT 78)
(PUNCT ":")
(LIT 78)
(PUNCT ",")
(LIT 79)
(PUNCT ":")
(LIT 79)
(PUNCT ",")
(LIT 80)
(PUNCT ":")
(LIT 80)
(PUNCT ",")
(LIT 81)
(PUNCT ":")
(LIT 81)
(PUNCT ",")
(LIT 82)
(PUNCT ":")
(LIT 82)
(PUNCT ",")
(LIT 83)
(PUNCT ":")
(LIT 83)
(PUNCT ",")
(LIT 84)
(PUNCT ":")
(LIT 84)
(PUNCT ",")
(LIT 85)
(PUNCT ":")
(LIT 85)
(PUNCT ",")
(LIT 86)
(PUNCT ":")
(LIT 86)
(PUNCT ",")
(LIT 87)
(PUNCT ":")
(LIT 87)
(PUNCT ",")
(LIT 88)
(PUNCT ":")
(LIT 88)
(PUNCT ",")
(LIT 89)
(PUNCT ":")
(LIT 89)
(PUNCT ",")
(LIT 90)
(PUNCT ":")
(LIT 90)
(PUNCT ",")
(LIT 91)
(PUNCT ":")
(LIT 91)
(PUNCT ",")
(LIT 91)
(PUNCT ":")
(LIT 219)
(PUNCT ",")
(LIT 92)
(PUNCT ":")
(LIT 92)
(PUNCT ",")
(LIT 92)
(PUNCT ":")
(LIT 220)
(PUNCT ",")
(LIT 93)
(PUNCT ":")
(LIT 93)
(PUNCT ",")
(LIT 93)
(PUNCT ":")
(LIT 221)
(PUNCT ",")
(LIT 94)
(PUNCT ":")
(LIT 94)
(PUNCT ",")
(LIT 94)
(PUNCT ":")
(LIT 222)
(PUNCT ",")
(LIT 95)
(PUNCT ":")
(LIT 95)
(PUNCT ",")
(LIT 95)
(PUNCT ":")
(LIT 223)
(PUNCT ",")
(LIT 96)
(PUNCT ":")
(LIT 96)
(PUNCT ",")
(LIT 97)
(PUNCT ":")
(LIT 97)
(PUNCT ",")
(LIT 98)
(PUNCT ":")
(LIT 98)
(PUNCT ",")
(LIT 99)
(PUNCT ":")
(LIT 99)
(PUNCT ",")
(LIT 100)
(PUNCT ":")
(LIT 100)
(PUNCT ",")
(LIT 101)
(PUNCT ":")
(LIT 101)
(PUNCT ",")
(LIT 102)
(PUNCT ":")
(LIT 102)
(PUNCT ",")
(LIT 103)
(PUNCT ":")
(LIT 103)
(PUNCT ",")
(LIT 104)
(PUNCT ":")
(LIT 104)
(PUNCT ",")
(LIT 105)
(PUNCT ":")
(LIT 105)
(PUNCT ",")
(LIT 106)
(PUNCT ":")
(LIT 106)
(PUNCT ",")
(LIT 107)
(PUNCT ":")
(LIT 107)
(PUNCT ",")
(LIT 108)
(PUNCT ":")
(LIT 108)
(PUNCT ",")
(LIT 109)
(PUNCT ":")
(LIT 109)
(PUNCT ",")
(LIT 110)
(PUNCT ":")
(LIT 110)
(PUNCT ",")
(LIT 111)
(PUNCT ":")
(LIT 111)
(PUNCT ",")
(LIT 112)
(PUNCT ":")
(LIT 112)
(PUNCT ",")
(LIT 113)
(PUNCT ":")
(LIT 113)
(PUNCT ",")
(LIT 114)
(PUNCT ":")
(LIT 114)
(PUNCT ",")
(LIT 115)
(PUNCT ":")
(LIT 115)
(PUNCT ",")
(LIT 116)
(PUNCT ":")
(LIT 116)
(PUNCT ",")
(LIT 117)
(PUNCT ":")
(LIT 117)
(PUNCT ",")
(LIT 118)
(PUNCT ":")
(LIT 118)
(PUNCT ",")
(LIT 119)
(PUNCT ":")
(LIT 119)
(PUNCT ",")
(LIT 120)
(PUNCT ":")
(LIT 120)
(PUNCT ",")
(LIT 121)
(PUNCT ":")
(LIT 121)
(PUNCT ",")
(LIT 122)
(PUNCT ":")
(LIT 122)
(PUNCT ",")
(LIT 123)
(PUNCT ":")
(LIT 123)
(PUNCT ",")
(LIT 123)
(PUNCT ":")
(LIT 251)
(PUNCT ",")
(LIT 124)
(PUNCT ":")
(LIT 124)
(PUNCT ",")
(LIT 124)
(PUNCT ":")
(LIT 252)
(PUNCT ",")
(LIT 125)
(PUNCT ":")
(LIT 125)
(PUNCT ",")
(LIT 125)
(PUNCT ":")
(LIT 253)
(PUNCT ",")
(LIT 126)
(PUNCT ":")
(LIT 126)
(PUNCT ",")
(LIT 127)
(PUNCT ":")
(LIT 127)
(PUNCT ",")
(LIT 160)
(PUNCT ":")
(LIT 129)
(PUNCT ",")
(LIT 171)
(PUNCT ":")
(LIT 140)
(PUNCT ",")
(LIT 187)
(PUNCT ":")
(LIT 152)
(PUNCT ",")
(LIT 196)
(PUNCT ":")
(LIT 128)
(PUNCT ",")
(LIT 199)
(PUNCT ":")
(LIT 130)
(PUNCT ",")
(LIT 201)
(PUNCT ":")
(LIT 131)
(PUNCT ",")
(LIT 209)
(PUNCT ":")
(LIT 132)
(PUNCT ",")
(LIT 214)
(PUNCT ":")
(LIT 133)
(PUNCT ",")
(LIT 220)
(PUNCT ":")
(LIT 134)
(PUNCT ",")
(LIT 224)
(PUNCT ":")
(LIT 136)
(PUNCT ",")
(LIT 225)
(PUNCT ":")
(LIT 135)
(PUNCT ",")
(LIT 226)
(PUNCT ":")
(LIT 137)
(PUNCT ",")
(LIT 228)
(PUNCT ":")
(LIT 138)
(PUNCT ",")
(LIT 231)
(PUNCT ":")
(LIT 141)
(PUNCT ",")
(LIT 232)
(PUNCT ":")
(LIT 143)
(PUNCT ",")
(LIT 233)
(PUNCT ":")
(LIT 142)
(PUNCT ",")
(LIT 234)
(PUNCT ":")
(LIT 144)
(PUNCT ",")
(LIT 235)
(PUNCT ":")
(LIT 145)
(PUNCT ",")
(LIT 237)
(PUNCT ":")
(LIT 146)
(PUNCT ",")
(LIT 238)
(PUNCT ":")
(LIT 148)
(PUNCT ",")
(LIT 239)
(PUNCT ":")
(LIT 149)
(PUNCT ",")
(LIT 241)
(PUNCT ":")
(LIT 150)
(PUNCT ",")
(LIT 243)
(PUNCT ":")
(LIT 151)
(PUNCT ",")
(LIT 244)
(PUNCT ":")
(LIT 153)
(PUNCT ",")
(LIT 246)
(PUNCT ":")
(LIT 154)
(PUNCT ",")
(LIT 247)
(PUNCT ":")
(LIT 155)
(PUNCT ",")
(LIT 249)
(PUNCT ":")
(LIT 157)
(PUNCT ",")
(LIT 250)
(PUNCT ":")
(LIT 156)
(PUNCT ",")
(LIT 251)
(PUNCT ":")
(LIT 158)
(PUNCT ",")
(LIT 252)
(PUNCT ":")
(LIT 159)
(PUNCT ",")
(LIT 1548)
(PUNCT ":")
(LIT 172)
(PUNCT ",")
(LIT 1563)
(PUNCT ":")
(LIT 187)
(PUNCT ",")
(LIT 1567)
(PUNCT ":")
(LIT 191)
(PUNCT ",")
(LIT 1569)
(PUNCT ":")
(LIT 193)
(PUNCT ",")
(LIT 1570)
(PUNCT ":")
(LIT 194)
(PUNCT ",")
(LIT 1571)
(PUNCT ":")
(LIT 195)
(PUNCT ",")
(LIT 1572)
(PUNCT ":")
(LIT 196)
(PUNCT ",")
(LIT 1573)
(PUNCT ":")
(LIT 197)
(PUNCT ",")
(LIT 1574)
(PUNCT ":")
(LIT 198)
(PUNCT ",")
(LIT 1575)
(PUNCT ":")
(LIT 199)
(PUNCT ",")
(LIT 1576)
(PUNCT ":")
(LIT 200)
(PUNCT ",")
(LIT 1577)
(PUNCT ":")
(LIT 201)
(PUNCT ",")
(LIT 1578)
(PUNCT ":")
(LIT 202)
(PUNCT ",")
(LIT 1579)
(PUNCT ":")
(LIT 203)
(PUNCT ",")
(LIT 1580)
(PUNCT ":")
(LIT 204)
(PUNCT ",")
(LIT 1581)
(PUNCT ":")
(LIT 205)
(PUNCT ",")
(LIT 1582)
(PUNCT ":")
(LIT 206)
(PUNCT ",")
(LIT 1583)
(PUNCT ":")
(LIT 207)
(PUNCT ",")
(LIT 1584)
(PUNCT ":")
(LIT 208)
(PUNCT ",")
(LIT 1585)
(PUNCT ":")
(LIT 209)
(PUNCT ",")
(LIT 1586)
(PUNCT ":")
(LIT 210)
(PUNCT ",")
(LIT 1587)
(PUNCT ":")
(LIT 211)
(PUNCT ",")
(LIT 1588)
(PUNCT ":")
(LIT 212)
(PUNCT ",")
(LIT 1589)
(PUNCT ":")
(LIT 213)
(PUNCT ",")
(LIT 1590)
(PUNCT ":")
(LIT 214)
(PUNCT ",")
(LIT 1591)
(PUNCT ":")
(LIT 215)
(PUNCT ",")
(LIT 1592)
(PUNCT ":")
(LIT 216)
(PUNCT ",")
(LIT 1593)
(PUNCT ":")
(LIT 217)
(PUNCT ",")
(LIT 1594)
(PUNCT ":")
(LIT 218)
(PUNCT ",")
(LIT 1600)
(PUNCT ":")
(LIT 224)
(PUNCT ",")
(LIT 1601)
(PUNCT ":")
(LIT 225)
(PUNCT ",")
(LIT 1602)
(PUNCT ":")
(LIT 226)
(PUNCT ",")
(LIT 1603)
(PUNCT ":")
(LIT 227)
(PUNCT ",")
(LIT 1604)
(PUNCT ":")
(LIT 228)
(PUNCT ",")
(LIT 1605)
(PUNCT ":")
(LIT 229)
(PUNCT ",")
(LIT 1606)
(PUNCT ":")
(LIT 230)
(PUNCT ",")
(LIT 1607)
(PUNCT ":")
(LIT 231)
(PUNCT ",")
(LIT 1608)
(PUNCT ":")
(LIT 232)
(PUNCT ",")
(LIT 1609)
(PUNCT ":")
(LIT 233)
(PUNCT ",")
(LIT 1610)
(PUNCT ":")
(LIT 234)
(PUNCT ",")
(LIT 1611)
(PUNCT ":")
(LIT 235)
(PUNCT ",")
(LIT 1612)
(PUNCT ":")
(LIT 236)
(PUNCT ",")
(LIT 1613)
(PUNCT ":")
(LIT 237)
(PUNCT ",")
(LIT 1614)
(PUNCT ":")
(LIT 238)
(PUNCT ",")
(LIT 1615)
(PUNCT ":")
(LIT 239)
(PUNCT ",")
(LIT 1616)
(PUNCT ":")
(LIT 240)
(PUNCT ",")
(LIT 1617)
(PUNCT ":")
(LIT 241)
(PUNCT ",")
(LIT 1618)
(PUNCT ":")
(LIT 242)
(PUNCT ",")
(LIT 1632)
(PUNCT ":")
(LIT 176)
(PUNCT ",")
(LIT 1633)
(PUNCT ":")
(LIT 177)
(PUNCT ",")
(LIT 1634)
(PUNCT ":")
(LIT 178)
(PUNCT ",")
(LIT 1635)
(PUNCT ":")
(LIT 179)
(PUNCT ",")
(LIT 1636)
(PUNCT ":")
(LIT 180)
(PUNCT ",")
(LIT 1637)
(PUNCT ":")
(LIT 181)
(PUNCT ",")
(LIT 1638)
(PUNCT ":")
(LIT 182)
(PUNCT ",")
(LIT 1639)
(PUNCT ":")
(LIT 183)
(PUNCT ",")
(LIT 1640)
(PUNCT ":")
(LIT 184)
(PUNCT ",")
(LIT 1641)
(PUNCT ":")
(LIT 185)
(PUNCT ",")
(LIT 1642)
(PUNCT ":")
(LIT 165)
(PUNCT ",")
(LIT 1657)
(PUNCT ":")
(LIT 244)
(PUNCT ",")
(LIT 1662)
(PUNCT ":")
(LIT 243)
(PUNCT ",")
(LIT 1670)
(PUNCT ":")
(LIT 245)
(PUNCT ",")
(LIT 1672)
(PUNCT ":")
(LIT 249)
(PUNCT ",")
(LIT 1681)
(PUNCT ":")
(LIT 250)
(PUNCT ",")
(LIT 1688)
(PUNCT ":")
(LIT 254)
(PUNCT ",")
(LIT 1700)
(PUNCT ":")
(LIT 247)
(PUNCT ",")
(LIT 1711)
(PUNCT ":")
(LIT 248)
(PUNCT ",")
(LIT 1722)
(PUNCT ":")
(LIT 139)
(PUNCT ",")
(LIT 1746)
(PUNCT ":")
(LIT 255)
(PUNCT ",")
(LIT 1749)
(PUNCT ":")
(LIT 246)
(PUNCT ",")
(LIT 8230)
(PUNCT ":")
(LIT 147)
(PUNCT ",")
(LIT 10058)
(PUNCT ":")
(LIT 192)
(PUNCT ",")
(PUNCT "}")
(NEWLINE)
(ENDMARKER)
