;=======函数名=======
B64加密(r:="")
{
    string:=r.0
    VarSetCapacity(bin, StrPut(string, "UTF-8")) && len := StrPut(string, &bin, "UTF-8") - 1 
    if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", 0, "uint*", size))
        ;throw Exception("CryptBinaryToString failed", -1)
        return r.0
    VarSetCapacity(buf, size << 1, 0)
    if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", &buf, "uint*", size))
        ;throw Exception("CryptBinaryToString failed", -1)
        return r.0
    ;return StrGet(&buf)
    return StrReplace(StrGet(&buf),"`r`n")	;2021.12.28增加替换掉回车，因为有时会生成回车符
}
 
;=======函数名=======
B64解密(r:="")
{
    string:=r.0
    if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x1, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
        ;throw Exception("CryptStringToBinary failed", -1)
        return r.0
    VarSetCapacity(buf, size, 0)
    if !(DllCall("crypt32\CryptStringToBinary", "ptr", &string, "uint", 0, "uint", 0x1, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
        ;throw Exception("CryptStringToBinary failed", -1)
        return r.0
    return StrGet(&buf, size, "UTF-8")
}