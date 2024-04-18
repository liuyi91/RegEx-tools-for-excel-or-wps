## <font color=red>Excel、WPS正则工具 2.2.2    [RegEx tools for excel or wps]</font>

# <font color=red> 注意：2022.10.29作者已申请注销在线模式的网址，在线模式已失效，请使用者转到离线模式使用。 </font> #

● 正则提取、替换、定位、筛选
    
● 初始热键**Win + z**
> 在这里声明一下：本软件由本人用Aardio与Autohotkey亲写，只要是在本人蓝奏云或github或群里下载的本软件，如若有朋友担心杀软报病毒、木马，不用私聊我，可直接删除。

### 一、有哪些功能？
##### 1、根据正则表达式提取单元格中的相应内容；
>提取数字：我1是2一3只4小5小6鸟 >> 123456
##### 2、根据正则表达式替换单元格中的相应内容；
>替换内容：abcd >> ABCD ; 123\*254 >> 254\*123

##### 3、根据正则表达式定位到相应单元格；
##### 4、根据正则表达式筛选相应行；
##### 5、除正则模式外还支持普通模式；
>鼠标右键点击执行，即可执行普通模式
##### 6、除此外还有各种常用的辅佐小功能。
| 辅佐功能1 | 辅佐功能2 |辅佐功能3 |辅佐功能4 |辅佐功能5 |
| ------------- |  ------------- |  ------------- |  ------------- |  ------------- | 
| <font color=red>**区域求和复制**</font> | <font color=red>**区域转值**</font> |选区偏移 |数据对比 |<font color=red>**vlookup一查多**</font> |
| 单元格公式复制 | <font color=red>**分级显示**</font> |高亮关键字 |区域去重|清除编辑密码 |
| <font color=red>**按字符分行**</font> | 金额转大写 |四舍五入 |选中空行|隔行插入行 |

### <font color=red>v2版本更新功能1</font>
| 特殊        | 描述      |
| ------------- | ------------- |
|<font color=red>\\,<br>匹配常见标点</font>|<font color=red>!"#$%&'()*+,\-.\/:;<=>?@[\]^_`{\|}~！\\“”￥‘’（），、。：；《》？【】……·◎○※×±Φφδ≠≥≤↑→↓ ∥∧∨①②③④⑤⑥⑦⑧⑨⑩ⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩⅪⅫ★☆℃√</font>|
|<font color=red>\\y<br>匹配常规中文</font>|<font color=red>即等于：[\x{4e00}-\x{9fa5}]<br>约等于：[一-龟]</font>|
### <font color=red>v2版本更新功能2</font>
| 格式        | 描述      |
| ------------- | ------------- |
| **m=>** | <font color=red>**必须前缀格式**</font> |
| i.0  | 一般用作序号<br>如1：++i.0<br>如2："<" ++i*2-1 ">" |
| m[0]、m[1]  | 替换引用由$1,$2,$3变成m[1],m[2]... |
| StrLower(m[0])<br>StrUpper(m[0])  | 转小写<br>转大写 |
| StrLen(m[0])  | 长度 |
| SubStr(m[0],start,length)  | 截取字符 |
| (m[0] >10 ) ? "Z" : "L"  | 三元运算 |
| StrSplit(A_clipboard,"`n")[++i.0]  | 替换为剪切板的第n行数据 |
| rept("F",strlen(m[0]))  | 替换为匹配字符长度个数的"F" v2.1.8+ |
| indexArr(n,m)  | 生成1+m~n+m的序列数组,m默认偏移为0 v2.2.2+ |
### v2.0.5增加m=>模式变量及函数
| 变量       | 描述      |
| ------------- | ------------- |
| TotalCell | 选区单元格数量，即总处理数量 |
| ssCell | 当前处理的第n个单元格 |

| 函数       | 描述      |
| ------------- | ------------- |
| CCC()  | 及CheckCellChange，检查处理的单元格是否与上一次是同一单元格。主要用于重置数组 |
| y2z(m[0])  | 英文字符转中文字符：<br>**!"'(),.:;<>?[]** 转为 **！“ ’（），。：；《》？【】**  |
|z2y(m[0])   | 中文字符转英文字符：<br>**！“” ’（），。：；《》？【】** 转为 **!"'(),.:;<>?[]**  |
| h2f(m[0])<br>f2h(m[0])      | 半角转全角<br>全角转半角 |
| rept("string",n)      | 重复函数+v2.1.8+ |
| indexArr(n,offset)      | 序列数组函数+v2.2.2+ |

>V2版本主要问题：
>>v2.0.6+已解决
>>>~~1.小数可能不精确，如948.33会被获取为948.3299999999999~~


### 二、下载地址
●  下载地址[解压密码：3300372390]:[蓝奏云:https://sixtyone.lanzoux.com/b015cpfji](https://sixtyone.lanzoux.com/b015cpfji)
    
●  视频介绍: [bilibili视频](https://space.bilibili.com/250915492/video)
    
●  帮助地址: [帮助有道云](http://note.youdao.com/noteshare?id=aa13b9095d2e494d8cbdad146f694d71&sub=2BB27C9EA8F1496E974CCD7DB679187E)
    
●  交流反馈及更多小工具请关注QQ群：595797774（1群已满） <font color=red>**2群：233862980**</font>[解压密码：3300372390]

### 三、文件夹中文件作用

| 文件名         | 作用      |
| ------------- | ------------- |
| **userzz.ini**  | **自定义正则库** |
| Setting.ini  | 设置配置  |
| 常用正则.txt  | 可搜集常用正则  |
| 常用替换.txt  | 可搜集常用替换 |
| 历史正则.txt  | 缓存的历史正则 |
| **CustomFunctions.ahk**  | **自定义正则函数** |
| **CustomAHK.ahk**  | **辅佐功能及其他高级配置** |

### 四、高度自定义设计
<font color=Green>

- [x] **启动热键自定义**
- [x] **辅佐功能热键自定义**
- [x] **自定义正则库添加**
- [x] **自定义函数功能添加**
- [x] **各种默认设置修改**
- [x] **可结合autohotkey编写各种功能**

</font>


### 五、特色功能
<font color=Green>

- [x] **强力的pcre正则环境** > [详见pcre](http://www.pcre.org/pcre.txt)
- [x] **支持操作单元格的vaule、Formula、Text格式内容**
- [x] **支持撤销**
- [x] **支持Tab分列**
- [x] **支持\i \m \j特殊格式**
- [x] **支持偏移输出**
- [x] **可通过自定义函数解决不支持反向不定长断言的不足**
- [x] **支持循环替换、多次执行、依次顺序执行等高级一步到位功能**
- [x] **可执行简易vba代码** 
- [x] **支持与Excel、WPS自带公式联合执行**
- [x] **1.5.5+支持数字区间**
    
</font>

![](https://github.com/liuyi91/Excel/blob/master/images/fgdy.gif)

### 六、特殊格式说明
  高版本：自定义函数中的循环替换、多次执行、依次顺序执行； （<font color=red>注意自定义函数功能都需将模式切换为到**正则替换</font>）** 
- **循环替换**（替换第1次后；第2次继续以上一次结果继续替换；。。。直到无匹配时结束。注:替换不当容易造成无限循环。）
   1. **格式：** 
   > - 正则表达式中一般输入：.+
   > - 子模式序号后选择：循环替换
   > - 替换框中格式：正则表达式>>替换内容 

   如:将sk1dd12k877asdfsdf<font color=red>123</font>dfdfdsk<font color=red>1</font>dd<font color=red>12</font>中a后面的数字替换为"数字" 

   |原文本| 结果|
   | -----| --- |
   |sk1dd12k877asdfsdf<font color=red>123</font>dfdfdsk<font color=red>1</font>dd<font color=red>12</font>|sk1dd12k877asdfsdf数字dfdfdsk数字dd数字|
   ```
   i)(?<=a).*?\K\d+>>数字
   ```
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则替换
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = .+
    子模式        = i)(?<=a).*?\K\d+>>数字
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 0
    匹配次数      = 
    匹配连接符    = 
    处理结果			= 
    偏移          = 1
    Tab分列				= 0
    自定义函数				= 循环替换
    状态栏提示    = 未添加状态栏提示！
    ```
</details>   
   
 - **多次执行**(因一般正则库中保存的内容仅能执行一次匹配或替换，因此为了更高效，可以用它执行多次)
   1. **格式：**
   > - 正则表达式中一般输入：.+
   > - 子模式序号后选择：多次执行
   > - 替换框中格式：　
   >> m：正则表达式>>最大次数>>分组序号>>各项连接符 [匹配模式]  
   >> r：正则表达式>>替换内容>>替换最大次数 [替换模式]  
   >> \.\.\.可写多个匹配、替换操作  
   
   如:将sk1dd12k877asdfsdf123dfdfdsk1dd12中a前面的内容删掉,后面的数字替换为"数字" 

   |原文本| 结果|
   | -----| --- |
   |sk1dd12k877asdfsdf123dfdfdsk1dd12|asdfsdf数字dfdfdsk数字dd数字|
   ```
   m:a.+$>>-1
   r:\d+>>数字
   ```
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则替换
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = .+
    子模式        = Base64:bTphLiskPj4tMQ0KcjpcZCs+PuaVsOWtlw==
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 0
    匹配次数      = 
    匹配连接符    = 
    处理结果			= 
    偏移          = 1
    Tab分列				= 0
    自定义函数				= 多次执行
    状态栏提示    = 未添加状态栏提示！
    ```
</details>

 - **依次顺序执行**(本函数与多次执行比较类似，只是每次执行操作时以原单元格数据为原文本，而不是上次的执行结果)
   1. **格式：**（同多次执行）
   > - 正则表达式中一般输入：.+
   > - 子模式序号后选择：多次执行
   > - 替换框中格式：　
   >> m：正则表达式>>最大次数>>分组序号>>各项连接符 [匹配模式]  
   >> r：正则表达式>>替换内容>>替换最大次数 [替换模式]  
   >> \.\.\.可写多个匹配、替换操作

   如：  
   
    |原文本| 名字|年龄|身高|
    | -----| --- | ---| ---|
    |他今年<font color=red>21</font>岁，是一个不同寻常的人，他叫：<font color=red>小张</font>，身高<font color=red>177</font>cm|小张|21|177|
   ```
   m：叫：\K[\x{4e00}-\x{9fa5}]{2,4}>>1
   m：\d+(?=岁)>>1
   m：(?<=身高)\d+>>1
   ```
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则替换
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = .+
    子模式        = Base64:be+8muWPq++8mlxLW1x4ezRlMDB9LVx4ezlmYTV9XXsyLDR9Pj4xDQpt77yaXGQrKD895bKBKT4+MQ0Kbe+8mig/PD3ouqvpq5gpXGQrPj4x
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 1
    匹配次数      = 
    匹配连接符    = Base64:CQ==
    处理结果			= 
    偏移          = 1
    Tab分列				= 1
    自定义函数				= 依次顺序执行
    状态栏提示    = 未添加状态栏提示！
    ```
</details>

 - **\i 模式** :提取多个数据中的第N个值
   1. **格式：** 如提取单元格中的第1,3,4~5，倒数第2个匹配值
   > - \d\i1,3,4:5,-2

    |选区| 结果|
    | -----|  ---|
    | 123456789|  1+3+4+5+8|
    
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则匹配
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = \d\i1,3,4:5,-2
    子模式        = 
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 1
    匹配次数      = 
    匹配连接符    = +
    处理结果			= 
    偏移          = 1
    Tab分列				= 1
    自定义函数				= 
    状态栏提示    = 未添加状态栏提示！
    ```
</details>    
    
 - **\m \M合并模式** :将连续区域在输出结果前连接成1列输出
   1. **格式：** 如将选取的1,2两列用-连接起来
   > - .+\m$1-$2

    |选区| 选区|结果|
    | -----| --- | ---|
    | ab| cd | ab-cd|
    | 12| 45 | 12-45|   
    
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则匹配
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = .+\m$1-$2
    子模式        = 
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 0
    匹配次数      = 
    匹配连接符    = 
    处理结果			= 
    偏移          = 1
    Tab分列				= 0
    自定义函数				= 
    状态栏提示    = 未添加状态栏提示！
    ```
</details>   

 - **\j \J合并模式** :与\m不同，\j是先将选区合并为1列，再进行正则处理
   1. **格式：** 如把ab两列合并为1列作为源数据处理
   > - \j..爱祖国

    |选区| 选区|结果|
    | -----| --- | ---|
    | 小明| 爱祖国 | 小米爱祖国|
    | 鲁智深| 爱祖国 | 智深爱祖国|   
    
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则匹配
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = \j..爱祖国
    子模式        = 
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 0
    匹配次数      = 
    匹配连接符    = 
    处理结果			= 
    偏移          = 1
    Tab分列				= 1
    自定义函数				= 
    状态栏提示    = 未添加状态栏提示！
    ```
</details>    

 - **数字区间** ：匹配数字区间
   1. **格式：** 如定位>=1且<10的数字
   > - ^[\d.]++(?CNumCP\I[1,10>)

    |选区| 选区|选区|
    | -----| --- | ---|
    | 1| 25.8 | 9.8|
    | 21| 45 | 4.8|   
    
   <details><summary><font color=blue>测试代码快速复制></font></summary>
   
    ```
    [110]
    标题          = 分享
    正则模式      = 正则定位
    起始行列      = 1,1
    过滤隐藏行    = 1
    非模式        = 0
    忽略大小写    = 1
    匹配反序      = 0
    正则代码      = ^[\d.]++(?CNumCP\I[1,10>)
    子模式        = 
    前缀检测      = (^[=+-])|(^\d{17})
    获取数据方式  = 1
    高级模式      = 0
    匹配次数      = 
    匹配连接符    = 
    处理结果			= 
    偏移          = 0
    Tab分列				= 1
    自定义函数				= 
    状态栏提示    = 未添加状态栏提示！
    ```
</details>    
    
### 七、正则知识
| 特殊        | 描述      |
| ------------- | ------------- |
| i)  | 忽略大小写 |
| `am)  | 多行模式 |
|<font color=red>\i</font>|<font color=red>v1.5.3及以上：正则匹配下的独特模式，提取所有匹配项中的第N个值</font>|
|<font color=red>\m</font>|<font color=red>v1.5.3及以上：匹配及替换下的独特模式多合一模式，可将多列转为1列<br>限制：\m模式仅支持连续区域且多行</font>|
|<font color=red>\M</font>|<font color=red>v1.5.4及以上：同\m，可将所有列转为1列<br>限制：\m模式仅支持连续区域且多行</font>|
|<font color=red>\j</font>|<font color=red>v1.5.4及以上：将选区数据先连接成1列再进行处理，<br>限制：\j模式仅支持连续区域且多行,不支持.text方式</font>|
|<font color=red>\J</font>|<font color=red>v1.5.4及以上：将选区数据用tab先连接成1列再进行处理，<br>限制：\j模式仅支持连续区域且多行,不支持.text方式</font>|
|<font color=red>\O或\o</font>|<font color=red>v2.1.4及以上：将选区数据连接成1行再进行处理（类似J模式），<br>限制：\o模式仅支持连续区域且多列,不支持.text方式</font>|
|<font color=red>(?CNumCP\I)</font>|<font color=red>v1.5.5及以上：支持数字区间<br>格式：(?<![\d.])[\d.]++(?CNumCP\I[50,150])<br>v1.5.6+简写格式：[?Q1.0,91> 或 <?Q,100.0]</font>|
>1. **在正则匹配模式下：在正则式末尾加上\i1,3,5:7,-2类似代码时，表示提取数组中的第1，3，4，5，6，7及倒数第二个值**  
>2. **匹配及替换模式下：在末尾加上\m$1-$2等实现连接选区1,2列【\m模式】，列表示：$1及$F两种方式**
>3. **\j模式格式：可在表达式开始位置输入\j**
>4. 软件默认勾选了忽略大小写设置
>5. **数字区间默认格式：\d+(?CNumCP\I[1,100>) 或 (?<num>\d+)(?CNumCP\I[1,100>) 或超过多个时<br>(?<num1>\d+)(?C1:NumCP\I[1,100>)**
 
| 常用元素        | 描述      |
| ------------- | ------------- |
| .  | 默认情况下, 句点匹配换行符(\r\n) 中除\r外的任何单个字符，因Excel中一般情况都只有\n，因此一般认为.匹配所有内容|
| *  |星号匹配零个或多个前面的字符, 例如, a* 可以匹配 ab 和 aaab. 它还可以匹配完全不包含 "a" 的任意字符串的开始处|
| ?  |问号匹配零或一个前面的字符,可以理解为"前面的那项是可选的". 例如, colou?r 可以匹配 color 和 colour, 因为 "u" 是可选的|
| (?:xxx)  |不捕获分组|
| +  |加号匹配一个或多个前面的字符,例如 a+ 可以匹配 ab 和 aaab. 但与 a* 和 a? 不同的是, 模式 a+ 不会匹配开始处没有 "a" 的字符串|
| {min,max} |匹配出现次数介于 min 和 max 的前面的字符, 例如, a{1,2} 可以匹配 ab 但只匹配 aaab 中的前两个a<br>此外, {3} 表示准确匹配 3 次, 而 {3,} 则表示匹配 3 次或更多. 注: 指定的数字必须小于 65536, 且第一个必须小于等于第二个|
| [...]  |字符类: 方括号把一列字符或一个范围括在了一起(或两者). 例如, [abc] 表示 "a, b 或 c 的中任何一个字符". 使用破折号来创建范围; 例如, [a-z] 表示 "在小写字母 a 和 z(包含的) 之间的任何一个字符". 列表和范围可以组合在一起; 例如 [a-zA-Z0-9_] 表示 "字母, 数字或下划线中的任何一个字符"<br>字符类后面可以使用 *, ?, + 或 {min,max} 进行限定. 例如, [0-9]+ 匹配一个或多个任意数字; 因此它可以匹配 xyz123 但不会匹配 abcxyz<br>通过 [[:xxx:]] 还支持下列 POSIX 命名集, 其中 xxx 是下列单词的其中一个: alnum, alpha, ascii(0-127), blank(space 或 tab), cntrl(控制字符), digit(0-9), xdigit(十六进制数), print, graph(排除了空格的打印字符), punct, lower, upper, space(空白), word(等同于 \w)<br>在字符类中, 只有在类中具有特殊含义的字符才需要进行转义; 例如 [\^a], [a\-b], [a\]] 和 [\\a]|
| [^...] |匹配 不 在类中的任何一个字符. 例如, [^/]* 匹配零个或多个 不是 正斜杠的任意字符, 例如 http://. 同样地, [^0-9xyz] 匹配既不是数字也不是 x, y 或 z 的任何一个字符|
| \d  |匹配任意一个数字(相当于类 [0-9]). 相反的, 大写的 \D 表示 "任意的 非 数字字符". 这个和下面的两个都可以用在字符类中; 例如, [\d.-] 表示 "任何数字, 句点或负号"|
| \s  |匹配任意单个空白字符 , 主要是空格, tab 和换行符(`r 和 `n)<br>大写的 \S 表示 "任何 非空白字符"|
| \w  |匹配任何单个 "单词" 字符, 即字母, 数字或下划线. 这等同于 [a-zA-Z0-9_]<br>大写的 \W 表示 "任何 非单词字符"|
| ^<br>$  |抑扬符(^) 和美元符($) 被称为 锚, 因为它们不消耗任何字符; 相反地, 它们把模式限定在被搜索字符串的开始或末尾进行匹配<br>在模式的开始处使用 ^ 表示需要在行的开始处进行匹配. 例如, ^abc 可以匹配 abc123 但不匹配 123abc<br>在模式的末尾处使用 $ 表示需要在行的末端进行匹配. 例如, abc$ 可以匹配 123abc 但不能匹配 abc123<br>这两个锚还可以组合使用. 例如, ^abc$ 仅匹配 abc(即在它的前面或后面不能有另外的字符)<br>如果被搜索的文本包含多行, 则可以使用 "m" 选项让锚应用于每行而不是把所有文本作为整体. 例如, `am)^abc$ 可以匹配 123`r`nabc`r`n789. 如果没有 "m" 选项则不会匹配成功|
| \b  |"单词边界", 它类似锚, 因为它不消耗任何字符. 它要求当前字符的状态为单词字符(\w), 与前一个字符的状态相反. 它通常用来避免意外地匹配到在其他单词内的某个单词. 例如, \bcat\b 不会匹配 catfish, 但它可以匹配不论周围是否有标点或空白的 cat<br>大写的 \B 则相反: 它要求当前字符 不是 单词的边界|
| \|  |竖线将两个或多个可选项目分隔开来. 如果可选项目中 任何一个 满足条件, 则会形成匹配. 例如, gray\|grey 既可以匹配 gray 也可以匹配 grey. 同样地, 模式 gr(a\|e)y 中通过下面描述的括号的帮助可以实现同样的作用|
<details><summary><font color=blue>查看更多></font></summary>

>贪婪: 默认情况下, *, ?, + 和 {min,max} 是贪婪的, 因为它们消耗到 最后一个 能满足整个模式的可能的所有字符. 要让它们停在 首个 可能的字符, 请在它们后面加上问号. 例如, 模式 <.+>(其中没有问号) 表示: "搜索一个 <, 接着一个或多个任意字符, 然后是一个 >". 
>
>要在匹配 整个 字符串 \<em>text\</em\> 时停止, 请在加号后加上问号: <.+?>. 这样会让匹配在第一个 '>' 处停止, 因此它只匹配第一个标签 \<em\>.

> 预测和回顾断言: 这组 (?=...), (?!...), (?<=...) 和 (?<!...) 被称为断言, 因为它们要求符合某个条件但不消耗任何字符  
> 例如: abc(?=.*xyz) 中含有预测断言, 它要求在字符串 abc 右边的某个位置存在字符串 xyz(如果不存在, 则匹配失败)  
> (?=...) 被称为 正 预测断言, 因为它要求指定的模式存在.   
> (?!...) 被称为 负 预测断言, 因为它要求指定的模式 不 存在.   
> 同样地, (?<=...) 和 (?<!...) 分别是正的和负的 回顾 断言, 因为它们检查当前位置的 左边 而不是右边.   
>
> 回顾比预测受到更多的限制, 因为它们不支持可变大小的限定符, 例如 *, ? 和 +. 转义序列 \K 类似于回顾断言, 因为它会让前一个匹配的字符在最后的匹配字符串中省略. 例如, foo\Kbar 可以匹配 "foobar" 但报告匹配的结果为 "bar".  
>
> 对于中文字符的匹配, [一-龥] 匹配单个汉字(包含了几乎所有常见汉字)(等同于 [\x{4e00}-\x{9fa5}]), 容易记忆的版本为 [一-龟](等同于 [\x{4e00}-\x{9f9f}]). 而 [^\x00-\x7f] 能匹配 ASCII 码表以外的所有字符. ë 这个字符编码为 0x0065 0x0308, 字符串 "123ë56" 使用 .{1,6} 匹配到的是 "123ë5", 而使用 \X{1,6} 匹配到的是 "123ë56".  

> 最后说明: 尽管这个页面涉及了大多数常用的正则表达式功能, 但是还有相当一部分您可能希望了解的其他功能没有提及, 例如条件子模式、递归等. 完整的 PCRE 手册请访问 www.pcre.org/pcre.txt

> 正则替换模式时：替换内容用$0引用整个匹配的内容，$1引用第一组内容..$2..$3..  
> 正则代码中用\1引用第一个分组内容：如 (ab)ka\1  可以匹配abkaab
</details>

### 八、问题反馈、建议
 在使用过程中有任何问题及建议，欢迎反馈。
 
 ● Email:576642385@qq.com (支持小工具定制)
 
 ● 微信：
 
![](https://github.com/liuyi91/Excel/blob/master/images/card.jpg)

### 九、捐赠开发者

 在工作之余写了一个提高excel、wps表格处理效率的小工具，分享给有同样需求的小伙伴们，希望大家喜欢。
 ![](https://github.com/liuyi91/Excel/blob/master/images/20220430173942.png)
 
### 十、更新历史
- v2.2.2[2024.04.18]     
 ○ 增加序列数组生成函数indexArr(n,offset)，如indexArr(100,1)，返回2~101的数组

- v2.2.1[2024.04.07]     
 ○ 修复表格无数据时，执行报错的问题

- v2.2.0[2024.03.23]     
 ○ 修复\J模式下分行时会出现多列的bug

- v2.1.9[2024.03.13]     
 ○ 修复WPS筛选时的一些问题  

- v2.1.8[2023.08.15]     
 ○ 替换模式下增Rept("s",n)函数     

- v2.1.7[2023.08.15]     
 ○ 筛选模式下的自动筛选增加显示上下n行功能,类似EmEditor的筛选额外可见行（格式为替换框中",2"或"01,3",注意前端0有特别作用）     

- v2.1.5[2023.04.21]     
 ○ 修复v2版本的一个重要bug     

- v2.1.4.1[2023.03.29]     
 ○ #z重置时清除分行，分列设置     
 ○ 修复bug:\j模式下同一区域执行分列的第二次，数据有问题（2.1.4.1以前版本通病）     
              
- v2.1.4[2023.03.29]     
 ○ 修复一些问题     
 ○ 增加分行功能     
 ○ 增加“\o”或“\O”先将行连接，同“\J”类似     
 ○ 解除分列列数限制       
       
- v2.1.3[2023.03.25]     
 ○ 修复一些问题     
 ○ 增加支持1个(?<=.+)不定长断言，仅支持正不支持负，且只能1个   

- v2.1.2[2023.02.09]     
 ○ 修复一些问题     
 ○ 增加B)模式的布尔正则表达式     
 ○ 布尔表达式格式:B)"a" and "b" 或 B)"i)a" and ("b" or not "c")等     
 
- v2.1.1[2022.11.30]     
 ○ 修复一些问题  
 ○ 修复多次执行函数问题  
       
- v2.1.0[2022.11.29]     
 ○ 修复一些问题  
 ○ 增加简易的布尔正则表达式功能支持and or not的定位、筛选  
 
 - v2.0.8[2022.11.4]     
 ○ 正则匹配模式：增加支持多分组提取，格式m[1]、m[2]  

- v2.0.7[2022.10.29]     
 ○ 修复\J连接时，先进行数据处理  
             
- v2.0.6[2022.10.21]     
 ○ 修复v2版本小数问题  
 ○ 修复软件在未执行前，win+r对比正则式报错的问题  
 
- v2.0.5     
 ○ 增加m=>模式相关的变量及函数  

- v2.0.4[2022.08.06]     
 ○ 增加正则表达式\y \\, 的支持    
 ○ 增加替换模式中的m=>xxx模式    
 
- v1.5.6[2022.06.08]     
 ○ 增加#r显示原始正则表达式与执行的正则表达式对比    
 ○ 数字区间支持简易的格式[?Q1,100]或 [?Q1.2,99>    

- v1.5.5[2022.06.06]     
 ○ 支持数字区间    
 ○ 增加数字区间逻辑[100,2]这类[大，小]类型为或结构>=100或<=2    

- v1.5.4[2022.06.01]     
 ○ 更新中文分词最长8个字    
 ○ 增加\m模式中的\M，用\M后的连接符连接区域所有列    
 ○ 增加\j和\J模式，先将选区合并为1列，再进行处理，\j无连接符，\J用tab连接   
                                        
- v1.5.3[2022.05.14]    
 ○ 修复!s !d填充数据为正则替换模式时，连接框不能输入问题     
 ○ 增加正则匹配下的特殊模式：\i模式【提取第N个数据】  
 ○ 格式：在正则表达式最后加 "\i1,3,5:9,-2"类似格式   
 ○ 增加正则匹配及替换模式下的特殊模式：\m模式【多合一】  
 ○ 格式：在\i模式后加\m,$1表示选区第1列，如.+\m$1$2将1，2列连接起来   
 ○ 限制：\m模式仅支持连续区域及多行
    
- v1.5.2[2022.05.07]   
 ○ 修复Formula模式下：选取只有1个单元格时不能取值问题       
 ○ 修复精确公式复制：可复制到其他表格或工作簿表，增加可撤销(编号fzgn34)1次   
 ○ 增加高级功能自定义函数：依次顺序执行（与多次执行类似）   
 ○ 增加内置函数：简体与繁体互转  
 ○ 增加内置函数：中文分词  
 ○ 增加自定义函数中英文字符互转  
 ○ 增加自定义函数数字运算 格式为：替换框中输入$0*2等   
 ○ 重定义辅助功能标签序号，在原序号前统一加fzgn(以前版本中CustomAHK文件内的goto,1等内容需换成goto,fzgn1)       

- v1.5.1[2022.04.30]   
 ○ 优化辅佐功能：两列数据对比  
 ○ 优化辅佐功能：高级查找  
 ○ 增加辅佐功能：自动分级 编号（29）  
 ○ 增加辅佐功能：选中空行 编号（30）  
 ○ 增加辅佐功能：解除表格编辑保护密码 编号（31）  
 ○ 增加辅佐功能：高亮关键字 编号（32）        
 ○ 增加辅佐功能：区域去重 编号（33）    
 ○ 重新布局辅佐功能窗口设置  
 ○ 增加筛选后滚动条自动回到最上端：默认Exsxgdt:=1时有效  
 ○ 增加Customahkguiclose函数，清楚自定义ahk的guiclose变量  
 ○ 增加运行VBA代码功能函数VBE_Run(VBcode,MacroName)，Excel对象变量只能用VbaExcel   
 ○ 增加保存多次执行匹配替换模式  

<details><summary><font color=blue>查看更多历史记录></font></summary> 
        
- v1.5.0[2022.03.14]   
 ○ 优化内存占用  
 ○ 增加preferstr变量：可修改隐藏后显示时的默认显示  
 ○ 修复历史正则与历史替换为0时，不显示的问题  

- v1.4.9[2022.03.14]   
 ○ 增加group窗口excelwpsapps方式注册热键，便于可以配置添加  
 ○ 自动筛选模式下，如果替换文本框输入内容为0，则取消筛选列的数据删除  
 ○ 增加F1热键的注册条件，如果F1hotkey=0则不注册F1热键  

- v1.4.8[2022.03.01]   
 ○ 修复excel中自动筛选模式下，数据出错问题  
        
- v1.4.7[2022.02.25]   
 ○ 优化执行时的进度条显示  
 ○ 优化选区单元格进入编辑状态时报错  

- v1.4.6[2022.02.23]   
 ○ 修复辅助功能热键显示错位  
 ○ 修复win7 64位程序退出时出现停止运行情况  
 ○ 增加自定义加载函数_AutoRunFunc  
 ○ 增加自定义加载ahk脚本CustomAHK.ahk  

- v1.4.4[2022.02.07]   
 ○ 正则替换模式下，支持自定义函数替换  

- v1.4.3[2021.12.31]   
 ○ 正则筛选模式下，增加自动筛选模式  
 
- v1.4.2[2021.12.22]   
 ○ 修复有时保存userzz数据出现偏差的问题  
 ○ 鼠标右键点击用普通模式执行(非正则模式)           
 ○ alt+d历史记录增加数量到50个  
 ○ 增加win+c把工具窗口数据复制到剪贴板，便于分享给他人            
 ○ 增加win+v把剪切板ini数据粘贴到正则工具窗口   
 ○ 单击自定义正则库按钮清除窗口数据，Ctrl+单击打开User文件夹    

- v1.4.1[2021.12.04]   
 ○ 增加Tab分列！！！    
        
- v1.4.0[2021.12.01]   
 ○ 增加手动选择检测xml  
 ○ 增加猫头鹰模式  
 ○ 修复保存数据格式的一些问题        

- v1.3.9[2021.11.27]   
 ○ 界面优化  
 ○ 增加自定义正则库  
 ○ Ctrl+单击正则库条目弹出提示        
 ○ 增加偏移数据保存  
 ○ 优化控件提示         
 ○ 自定义数据中涉及到换行的可用B64        
 ○ Win+n预览剪切板中的Base64          

- v1.3.8[2021.11.05]   
 ○ 增加正则多行模式： `nm)  `rm)  `rm) ；  
 ○ 增加匹配连接符为回车换行符。  

- v1.3.7[2021.09.23]   
 ○ 增加处理结果功能。  
        
- v1.3.6[2021.09.15]   
 ○ 增加文本标记符判断。  

- v1.3.5[2021.09.13]   
 ○ 删除在线人数统计模块。  
        
- v1.3.4[2021.09.05]   
 ○ 修改提示与鼠标的间距；  
 ○ 修复有时打开示例教程网站打不开；  
 ○ 修复未关闭窗口时按下Win+z程序会失效的bug。  

- v1.3.3[2021.08.15]   
 ○ 继续优化控件焦点。  
 ○ 操作出错的提示方式变化。  
 ○ 增加辅助功能：高级提取v1.0测试版。  

- v1.3.2[2021.08.09]   
 ○ 优化控件焦点。  

- v1.3.1[2021.08.07]   
 ○ 1.3.0版本的flash控件仅适合安装了该控件的电脑，否则会出错，改用了其他方式。  
 ○ 增加辅佐功能：按字符分行。  
 ○ 增加辅佐功能：隔行插入空行。  

- v1.3.0[2021.08.01]   
 ○ 增加热键F1>在窗口上弹出热键提示，如其他程序的alt功能。  
 ○ 自定义菜单、弹出正则菜单等响应enter键。  
 ○ 修复v1.2.6-v1.2.9中正则筛选时，显示全部行出错问题。  

- v1.2.9[2021.07.29]   
 ○ 貌似解决了有时启动时报错的问题。  

- v1.2.8[2021.07.27]   
 ○ 增加辅佐功能数据列对比。  

- v1.2.7[2021.07.27]   
 ○ 偏移输出支持输入格式：列字母。  

- v1.2.6[2021.07.23]   
 ○ 增加偏移输出；（仅支持列）  
 ○ 高级查询更新到v1.2。  
 ○ 增加历史数据可以通过Ctrl+鼠标点击保存到配置文件。  
 ○ 修复匹配模式时，子字符为回车时出错的问题；  
 ○ 增加起始列设置；  
 ○ 增加悬浮帮助提示；  
 ○ 增加执行快捷键：Alt + Enter或Ctrl + Enter；  
 ○ 增加切换正则模式快捷键：Alt + 1~4；  
 ○ 增加Alt +S设置为上一次历史数据；  
 ○ 增加Alt +D展开历史数据；  
 ○ 增加辅佐功能：高级查找v1.1。  

- v1.2.5[2021.05.14]   
 ○ 修复匹配、匹配连接、反序等操作时一个逻辑错误。  

- v1.2.4[2021.05.12]   
 ○ 增加匹配模式字符串反序； 注意：应结合EXCEL表格特性，如0.12反序后本应为21.0，但excel会省略到后面的，变成21，这样再反序回去和原来就有区别了。  
 ○ 修复excel中最后一个为合并单元格时不能识别列的问题。  
        
- v1.2.3[2021.05.10]   
 ○ 增加Excel辅助功能。  

- v1.2.2[2021.03.31]   
 ○ 优化数据量较大时的速度。  
    
- v1.2.1[2021.03.12]   
 ○ 修复RegExMatchAll函数有可能出现无限循环的问题。  
        
- v1.2.0[2021.01.23]   
 ○ 修复筛选模式下起始行设置无效问题；  
 ○ 修复有合并单元格时定位位置偏差问题。  
        
- v1.1.9[2021.01.11]   
 ○ 修复v1.1.8版本的匹配次数不能设置问题；  
 ○ 修复v1.1.8版本历史数据快捷输入因编码原因不能有效执行问题；  
 ○ 修复v1.1.6版本后因增加默认忽略大小写，正则式为空不弹出提示问题。  

- v1.1.8(可能因编码问题，历史及常用正则输入后无效，已撤回该版)[2021.01.10]   
 ○ 匹配模式默认改为全部匹配，之前版本为默认匹配1次；  
 ○ 完善自定义菜单功能，常用正则一步到位。  
        
- v1.1.7[2021.01.09]   
 ○ 增加常用正则、历史正则、常用替换、历史替换快捷输入；  
 ○ 在输入框左半部按下鼠标中键>历史，在输入框右半部按下鼠标中键>常用。  

- v1.1.6[2020.12.27]   
 ○ 增加默认忽略大小写；  
 ○ 定位及筛选模式下，若选区仅为1个单元格（被认为未手动选区），则以整个数据区为对象。  

- v1.1.5[2020.12.12]   
 ○ 改以选区方形区为数据区及备份区；  
 ○ 调整筛选算法的逻辑关系；   
 ○ 增加单元格前缀单引号的检测;     
 ○ 修复了一些问题。   

- v1.1.4[2020.12.10]   
 ○ 采用了新的算法，性能上得到了显著提升；  
 ○ 增加获取源数据方式的选择，以前版本默认为Text模式；  
 ○ 增加Win+5热键>>获取选中单元格[Value Formula Text]三者结果的对比；  
 ○ 以整张表为数据区及备份区。         
        
- v1.1.3[2020.12.03]   
 ○ 修复WPS选区优化问题；  
 ○ 增加示例演示接口。  

- v1.1.2[2020.6.13]   
 ○ 增加起始行输入（默认1）,当选择区含有整列时，可用此选项排除表头行；  
 ○ 增加过滤隐藏行选项（默认过滤），隐藏行默认不执行操作；  
 ○ 增加正则筛选功能。  
  
- v1.1.1[2020.6.7]   
 ○ 修复WPS整合模式不响应问题；  
 ○ 更改高分屏DPI自动缩放（没有测试环境，不知道是否可行） 。  
 
- v1.1.0[2020.5.20]   
 ○ 重写程序界面，美化；  
 ○ 增加程序开机自启功能。    
  
- v1.0.4[2020.5.12]   
 ○ 修复程序退出后，进程中不退出的问题；  
 ○ 防止程序多次运行；   
 ○ 优化代码，防止出错。  

- v1.0.3[2020.5.7]   
 ○ 增加自定义热键功能；  
 ○ 增加反馈建议渠道；   
 ○ 增加程序设置功能：支持修改热键，在线人数。   
 
- v1.0.2[2020.5.4]   
 ○ 更新对WPS表格的支持；  
 ○ 增加检查更新链接。  
        
- v1.0.1[2020.4.26]   
 ○ 更新撤销功能，不限于1次，之前版本只能撤销1次。     
</details>
    
    
# ==================================
# Excel正则工具操作帮助

 -  ### 一、程序设置
   
    - 主要可以设置程序的启动热键、在线模式、开机自动启动，偏移列的默认值及其他。

 -  ### 二、软件主要
    - **模式选择**
        - 正则匹配：提取单元格中匹配的对应数据；
        - 正则替换：把匹配的内容替换为其他内容；
            - <font color=red>此模式下可使用高级的自定义函数</font>
            - <font color=red>循环替换、多次执行、依次顺序执行等</font>
        - 正则定位：选中匹配内容的单元格；
            - 支持非模式，即选择不匹配的单元
        - 正则筛选：仅显示匹配的行；
            - 支持模式1：不匹配的行隐藏
            - 支持模式2：自动筛选模式（默认）（1.4.3+）
            - 模式2时，替换框输入0时，将不删除筛选列的数据（1.4.9+）
    - **起始行列**
        - 起始行列之前的内容，不参与计算。筛选时仅有起始行有效，主要用于有标题行的情况；
        - 支持格式：
            - 1
            - 1,1
            - A
            - A1
    - **偏移输出**            
        - 将正则匹配、正则替换的执行结果不在源数据单元格输出，而是可向后或向前偏移一定列数输出
        - 支持格式：
            - 整数；其他数据不偏移
            - 列字母；A B C D等
    - **过滤隐藏行**          
        - 顾名思义，隐藏的单元格数据不参与操作
    - **自定义正则库**
        - 主要用于执行较固定的操作，而快速获得结果；
        - 默认自带了一定数数量的表达式组；（可参考写法或利用）
        - 可以将自己常用或适合自己的一些表达式组保存到正则库中，方便随时调用;
        - 可以Ctrl+鼠标左键单击库中的条目，显示该正则组的功能（该提示可以自己写），也可以在状态栏悬停显示;
        - 鼠标左键双击将表达式组数据添加到工具中，鼠标右键单击则只将表达式组中的正则表达式添加到正则表达式方框中;
        - 单击自定义正则库按钮>清除窗口数据，Ctrl+单击>打开程序User文件夹;（1.4.2+）
    - **搜索过滤**
        - 快速搜索、过滤正则库中的条目，支持中文、拼音首字母及序号； 
    - **忽略大小写**
        - 程序默认正则是忽略大小写模式
    - **匹配反序**
        - 将匹配的结果反序输出
        - 一般用得较少
    - **正则表达式框(PCRE)**  
        - 输入正则表达式
        - 鼠标中键方框左半区，弹出历史正则式；中键又半区，弹出常用的正则式（由自己收集）；
        - Alt+s：快速填充上次执行的窗口数据；
        - Alt+d：弹出历史执行的窗口数据；
            - 可双击选择填充
            - <font color=red>可cltr+双击将数据保存到自定义正则库中（唯一快速的方式）</font>
        - 支持\1引用，支持?1，?R，条件子模式，递归等（具体基础正则可查看程序中的帮助，更多详情请研究[**pcre**](http://www.pcre.org/pcre.txt)）
    - **子模式框、替换框**  
        - 输入正则匹配的分组序号；
            - 支持分组1 2 3等序号
            - 支持自定义名称
        - 输入正则替换时，需要替换的内容；
            - 支持$0 $1 $2等分组引用
            - 当在自定义函数模式下，需按格式要求录入正则式
        - 替换为tab符时，需按下ctrl+tab按键；
        - 鼠标中键触发方式与正则表达式框同；
    - **结果处理** 
        - 将正则匹配和替换的结果，进行最后一步的处理
        - 如：正则替换后的内容为 “100+4+2+2”，则可以处理为“=$0”，将直接获得结果：“=100+4+2+2 =108”
        - 必须含有$0参数
    - **检查前缀、检测xml** 
    - **高级模式** 
        - value：对单元格内容的值进行处理；
        - Formula：对单元格的公式进行处理；
        - text：对单元格的text内容处理；（数据大时很慢）
        - 三者具体区别点击软件中查看；
        - **Tab分列** 
            - 将对结果数据按Tab符进行分列输出(考虑性能问题，默认限制到30列)
        - **最大次数** 
            - 可设置最大的匹配次数、替换次数；默认为全部
        - **匹配连接符** 
            - 正则匹配时的多个数据进行连接，tab符需按Ctrl+tab，回车则直接按回车；
        - **撤销** 
            - 当有误操作时，撤销恢复；
            - 因数据的多样性及研究的深度问题，并不能保证100%的与原始一致；
        - **执行** 
            - 鼠标左键单击：正则执行；
            - <font color=red>鼠标右键单击：正则表达式方框输入的内容，将作为普通的数据进行操作（不再具有正则特性）；与Excel自带的查找、替换相同；（1.4.2+）</font>
        - **其他** 
            - F1弹出快捷操作键（全局）；若占用了其他软件热键，可按Ctrl+F1；
            - 在程序中支持alt键（功能同F1）；
            - 窗口最小化按钮旁边√可以切换窗口置顶；
            - 猫头鹰双击可临时隐藏窗口；
            - 窗口中支持Win+c复制窗口数据到剪贴板，便于快速分享给他人；（1.4.2+）
            - 窗口中支持Win+v粘贴剪切板的数据到窗口中；（1.4.2+）
            - 增加高级自定义函数_AutoRunFunc，可修改配置；（1.4.6+）
            - 增加CustomAHK文件，可插入自己的ahk代码及辅佐功能；（1.4.6+）
            - 设置F1hotkey=0则不注册F1热键；（1.4.9+）
            - 增加preferstr变量：可修改隐藏后显示时的默认显示；preferstr=()；如果preferstr:=""则保持不变。（1.5.0+）
            - 增加Customahkguiclose函数，用于清除自定义ahk中的guiclose变量；（1.5.1+）
            
-  ### 三、视频
    - 下载地址:[蓝奏云:https://sixtyone.lanzoux.com/b015cpfji](https://sixtyone.lanzoux.com/b015cpfji)
    - 视频介绍: [bilibili视频](https://space.bilibili.com/250915492/video)
    
-  ### 四、特殊格式说明
    - 高版本：自定义函数中的循环替换、多次执行、依次顺序执行； （<font color=red>注意自定义函数功能都需将模式切换为到**正则替换</font>）** 
    - **循环替换**（替换第1次后；第2次继续以上一次结果继续替换；。。。直到无匹配时结束。注:替换不当容易造成无限循环。）
       1. **格式：** 
       > - 正则表达式中一般输入：.+
       > - 子模式序号后选择：循环替换
       > - 替换框中格式：正则表达式>>替换内容 

        如:将sk1dd12k877asdfsdf<font color=red>123</font>dfdfdsk<font color=red>1</font>dd<font color=red>12</font>中a后面的数字替换为"数字" 

       |原文本| 结果|
       | -----| --- |
       |sk1dd12k877asdfsdf<font color=red>123</font>dfdfdsk<font color=red>1</font>dd<font color=red>12</font>|sk1dd12k877asdfsdf数字dfdfdsk数字dd数字|
       ```
       i)(?<=a).*?\K\d+>>数字
         ```
       <details><summary><font color=blue>测试代码快速复制></font></summary>
       
        ```
        [110]
        标题          = 分享
        正则模式      = 正则替换
        起始行列      = 1,1
        过滤隐藏行    = 1
        非模式        = 0
        忽略大小写    = 1
        匹配反序      = 0
        正则代码      = .+
        子模式        = i)(?<=a).*?\K\d+>>数字
        前缀检测      = (^[=+-])|(^\d{17})
        获取数据方式  = 1
        高级模式      = 0
        匹配次数      = 
        匹配连接符    = 
        处理结果			= 
        偏移          = 1
        Tab分列				= 0
        自定义函数				= 循环替换
        状态栏提示    = 未添加状态栏提示！
        ```
    </details>   

    - **多次执行**(因一般正则库中保存的内容仅能执行一次匹配或替换，因此为了更高效，可以用它执行多次)
       1. **格式：**
       > - 正则表达式中一般输入：.+
       > - 子模式序号后选择：多次执行
       > - 替换框中格式：　
       >> 匹配：正则表达式>>最大次数>>分组序号>>各项连接符  
       >> 替换：正则表达式>>替换内容>>替换最大次数  
       >> \.\.\.可写多个匹配、替换操作  
       
       如:将sk1dd12k877asdfsdf123dfdfdsk1dd12中a前面的内容删掉,后面的数字替换为"数字" 
    
       |原文本| 结果|
       | -----| --- |
       |sk1dd12k877asdfsdf123dfdfdsk1dd12|asdfsdf数字dfdfdsk数字dd数字|
       ```
       匹配:a.+$>>-1
       替换:\d+>>数字
       ```
       <details><summary><font color=blue>测试代码快速复制></font></summary>
       
        ```
        [110]
        标题          = 分享
        正则模式      = 正则替换
        起始行列      = 1,1
        过滤隐藏行    = 1
        非模式        = 0
        忽略大小写    = 1
        匹配反序      = 0
        正则代码      = .+
        子模式        = Base64:5Yy56YWNOmEuKyQ+Pi0xDQrmm7/mjaI6XGQrPj7mlbDlrZc=
        前缀检测      = (^[=+-])|(^\d{17})
        获取数据方式  = 1
        高级模式      = 0
        匹配次数      = 
        匹配连接符    = 
        处理结果			= 
        偏移          = 1
        Tab分列				= 0
        自定义函数				= 多次执行
        状态栏提示    = 未添加状态栏提示！
        ```
    </details>

     - **依次顺序执行**(本函数与多次执行比较类似，只是每次执行操作时以原单元格数据为原文本，而不是上次的执行结果)
       1. **格式：**（同多次执行）
       > - 正则表达式中一般输入：.+
       > - 子模式序号后选择：多次执行
       > - 替换框中格式：　
       >> 匹配：正则表达式>>最大次数>>分组序号>>各项连接符  
       >> 替换：正则表达式>>替换内容>>替换最大次数  
       >> \.\.\.可写多个匹配、替换操作
    
       如：  
       
        |原文本| 名字|年龄|身高|
        | -----| --- | ---| ---|
        |他今年<font color=red>21</font>岁，是一个不同寻常的人，他叫：<font color=red>小张</font>，身高<font color=red>177</font>cm|小张|21|177|
       ```
       匹配：叫：\K[\x{4e00}-\x{9fa5}]{2,4}>>1
       匹配：\d+(?=岁)>>1
       匹配：(?<=身高)\d+>>1
       ```
       <details><summary><font color=blue>测试代码快速复制></font></summary>
       
        ```
        [110]
        标题          = 分享
        正则模式      = 正则替换
        起始行列      = 1,1
        过滤隐藏行    = 1
        非模式        = 0
        忽略大小写    = 1
        匹配反序      = 0
        正则代码      = .+
        子模式        = Base64:5Yy56YWN77ya5Y+r77yaXEtbXHh7NGUwMH0tXHh7OWZhNX1dezIsNH0+PjENCuWMuemFje+8mlxkKyg/PeWygSk+PjENCuWMuemFje+8mig/PD3ouqvpq5gpXGQrPj4x
        前缀检测      = (^[=+-])|(^\d{17})
        获取数据方式  = 1
        高级模式      = 1
        匹配次数      = 
        匹配连接符    = Base64:CQ==
        处理结果			= 
        偏移          = 1
        Tab分列				= 1
        自定义函数				= 依次顺序执行
        状态栏提示    = 未添加状态栏提示！
        ```
    </details>
