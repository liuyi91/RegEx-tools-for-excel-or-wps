;循环替换
;循环替换直到无匹配时为止
;格式：正则代码框输入:.+ 把全部内容提取出来，替换框输入: 实际正则代码>>替换代码  如：i)cx>>城西
;替换框中的正则代码必须严格按正则书写，不再受软件的忽略大小写影响
;=======函数名=======
循环替换(r){
if (Ex正则替换内容="")
	return ""
str:=r.0
re:=RegExReplace(Ex正则替换内容,">>.+$")
RegExMatch(Ex正则替换内容,"(?<=>>).+$",ti)
while RegExMatch(str,re)
	str:=RegExReplace(str,re,ti)
return str
}