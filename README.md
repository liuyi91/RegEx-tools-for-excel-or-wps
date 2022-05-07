### Excel、WPS正则工具
● 正则提取、替换、定位、筛选
    
● 初始热键Win + z
> 在这里声明一下：本软件由本人用Aardio与Autohotkey亲写，只要是在本人蓝奏云或github或群里下载的本软件，如若有朋友担心杀软报病毒、木马，不要私聊我，可直接删除。

### 有哪些功能？
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
| 区域求和复制 | 区域转值 |选区偏移 |数据对比 |vlookup一查多 |
| 单元格公式复制 | 分级显示 |高亮关键字 |区域去重|清除编辑密码 |
| 按字符分行 | 金额转大写 |四舍五入 |选中空行|各行插入行 |

### 下载地址
●  下载地址:[蓝奏云:https://sixtyone.lanzoux.com/b015cpfji](https://sixtyone.lanzoux.com/b015cpfji)
    
●  视频介绍: [bilibili视频](https://space.bilibili.com/250915492/video)
    
●  帮助地址: [帮助有道云](https://note.youdao.com/ynoteshare/index.html?id=e86b7205e6b3358c7f37b9536d2740d0&type=note&_time=1647007734406)
    
●  交流反馈及更多小工具请关注QQ群：595797774（1群已满） 2群：233862980

### 文件夹中文件作用

| 文件名         | 作用      |
| ------------- | ------------- |
| userzz.ini  | 自定义正则库 |
| Setting.ini  | 设置配置  |
| 常用正则.txt  | 可搜集常用正则  |
| 常用替换.txt  | 可搜集常用替换 |
| 历史正则.txt  | 缓存的历史正则 |
| CustomFunctions.ahk  | 自定义正则函数 |
| CustomAHK.ahk  | 辅佐功能及其他高级配置 |

### 高度自定义设计
- [x] 启动热键自定义
- [x] 辅佐功能热键自定义
- [x] 自定义正则库添加
- [x] 自定义函数功能添加
- [x] 各种默认设置修改
- [x] 可结合autohotkey编写各种功能

### 特色功能
- [x] 强力的pcre正则环境 > [详见pcre](http://www.pcre.org/pcre.txt)
- [x] 支持操作单元格的vaule、Formula、Text格式内容
- [x] 支持撤销
- [x] 支持Tab分列
- [x] 支持偏移输出
- [x] 可通过自定义函数解决不支持反向不定长断言的不足 
- [x] 支持循环替换、多次执行、依次顺序执行等高级一步到位功能
- [x] 可执行简易vba代码 
- [x] 支持与Excel、WPS自带公式联合执行

![](https://github.com/liuyi91/Excel/blob/master/images/fgdy.gif)

### 特殊格式说明
  高版本：自定义函数中的循环替换、多次执行、依次顺序执行； **（注意自定义函数功能都需将模式切换为到正则替换）** 

- 循环替换（替换第1次后；第2次继续以上一次结果继续替换；。。。直到无匹配时结束。注:替换不当容易造成无限循环。）
  1. 格式： 
  > - 正则表达式中一般输入：.+
  > - 子模式序号后选择：循环替换
  > - 替换框中格式：正则表达式>>替换内容 	
  > 如：将sk1dd12k877asdfsdf123dfdfdsk1dd12 中a后面的数字替换为"数字"
  ```
  i)(?<=a).*?\K\d>>数字
  ```

### 正则知识
| 选项        | 描述      |
| ------------- | ------------- |
| i)  | 忽略大小写 |
| `am)  | 多行模式 |
>软件默认勾选了忽略大小写设置
 
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


### 问题反馈、建议
 在使用过程中有任何问题及建议，欢迎反馈。
 
 ● Email:576642385@qq.com (支持小工具定制)
 
 ● 微信：
 
![](https://github.com/liuyi91/Excel/blob/master/images/card.jpg)

### 捐赠开发者

 在工作之余写了一个提高excel、wps表格处理效率的小工具，分享给有同样需求的小伙伴们，希望大家喜欢。
 ![](https://github.com/liuyi91/Excel/blob/master/images/20220430173942.png)
 
### 更新历史
    ● v1.5.2[2022.05.07] 
        ○ 修复Formula模式下：选取只有1个单元格时不能取值问题      
        ○ 修复精确公式复制：可复制到其他表格或工作簿表，增加可撤销(编号fzgn34)1次 
        ○ 增加高级功能自定义函数：依次顺序执行（与多次执行类似） 
        ○ 增加内置函数：简体与繁体互转
        ○ 增加内置函数：中文分词（感觉没什么用）
        ○ 增加自定义函数中英文字符互转
        ○ 增加自定义函数数字运算 格式为：替换框中输入$0*2等 
        ○ 重定义辅助功能标签序号，在原序号前统一加fzgn(以前版本中CustomAHK文件内的goto,1等内容需换成goto,fzgn1)     

    ● v1.5.1[2022.04.30] 
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
        
    ● v1.5.0[2022.03.14] 
        ○ 优化内存占用
        ○ 增加preferstr变量：可修改隐藏后显示时的默认显示
        ○ 修复历史正则与历史替换为0时，不显示的问题

    ● v1.4.9[2022.03.14] 
        ○ 增加group窗口excelwpsapps方式注册热键，便于可以配置添加
        ○ 自动筛选模式下，如果替换文本框输入内容为0，则取消筛选列的数据删除
        ○ 增加F1热键的注册条件，如果F1hotkey=0则不注册F1热键

    ● v1.4.8[2022.03.01] 
        ○ 修复excel中自动筛选模式下，数据出错问题
        
    ● v1.4.7[2022.02.25] 
        ○ 优化执行时的进度条显示
        ○ 优化选区单元格进入编辑状态时报错

    ● v1.4.6[2022.02.23] 
        ○ 修复辅助功能热键显示错位
        ○ 修复win7 64位程序退出时出现停止运行情况
        ○ 增加自定义加载函数_AutoRunFunc
        ○ 增加自定义加载ahk脚本CustomAHK.ahk
        
    ● v1.4.4[2022.02.07] 
        ○ 正则替换模式下，支持自定义函数替换

    ● v1.4.3[2021.12.31] 
        ○ 正则筛选模式下，增加自动筛选模式
 
    ● v1.4.2[2021.12.22] 
        ○ 修复有时保存userzz数据出现偏差的问题
        ○ 鼠标右键点击用普通模式执行(非正则模式)         
        ○ alt+d历史记录增加数量到50个
        ○ 增加win+c把工具窗口数据复制到剪贴板，便于分享给他人          
        ○ 增加win+v把剪切板ini数据粘贴到正则工具窗口 
        ○ 单击自定义正则库按钮清除窗口数据，Ctrl+单击打开User文件夹  

    ● v1.4.1[2021.12.04] 
        ○ 增加Tab分列！！！  
        
    ● v1.4.0[2021.12.01] 
        ○ 增加手动选择检测xml
        ○ 增加猫头鹰模式
        ○ 修复保存数据格式的一些问题      

    ● v1.3.9[2021.11.27] 
        ○ 界面优化
        ○ 增加自定义正则库
        ○ Ctrl+单击正则库条目弹出提示      
        ○ 增加偏移数据保存
        ○ 优化控件提示       
        ○ 自定义数据中涉及到换行的可用B64      
        ○ Win+n预览剪切板中的Base64        

    ● v1.3.8[2021.11.05] 
        ○ 增加正则多行模式： `nm)  `rm)  `rm) ；
        ○ 增加匹配连接符为回车换行符。

    ● v1.3.7[2021.09.23] 
        ○ 增加处理结果功能。
        
    ● v1.3.6[2021.09.15] 
        ○ 增加文本标记符判断。

    ● v1.3.5[2021.09.13] 
        ○ 删除在线人数统计模块。
        
    ● v1.3.4[2021.09.05] 
        ○ 修改提示与鼠标的间距；
        ○ 修复有时打开示例教程网站打不开；
        ○ 修复未关闭窗口时按下Win+z程序会失效的bug。

    ● v1.3.3[2021.08.15] 
        ○ 继续优化控件焦点。
        ○ 操作出错的提示方式变化。
        ○ 增加辅助功能：高级提取v1.0测试版。

    ● v1.3.2[2021.08.09] 
        ○ 优化控件焦点。

    ● v1.3.1[2021.08.07] 
        ○ 1.3.0版本的flash控件仅适合安装了该控件的电脑，否则会出错，改用了其他方式。
        ○ 增加辅佐功能：按字符分行。
        ○ 增加辅佐功能：隔行插入空行。

    ● v1.3.0[2021.08.01] 
        ○ 增加热键F1>在窗口上弹出热键提示，如其他程序的alt功能。
        ○ 自定义菜单、弹出正则菜单等响应enter键。
        ○ 修复v1.2.6-v1.2.9中正则筛选时，显示全部行出错问题。

    ● v1.2.9[2021.07.29] 
        ○ 貌似解决了有时启动时报错的问题。

    ● v1.2.8[2021.07.27] 
        ○ 增加辅佐功能数据列对比。

    ● v1.2.7[2021.07.27] 
        ○ 偏移输出支持输入格式：列字母。

    ● v1.2.6[2021.07.23] 
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

    ● v1.2.5[2021.05.14] 
        ○ 修复匹配、匹配连接、反序等操作时一个逻辑错误。

    ● v1.2.4[2021.05.12] 
        ○ 增加匹配模式字符串反序； 注意：应结合EXCEL表格特性，如0.12反序后本应为21.0，但excel会省略到后面的，变成21，这样再反序回去和原来就有区别了。
        ○ 修复excel中最后一个为合并单元格时不能识别列的问题。
        
    ● v1.2.3[2021.05.10] 
        ○ 增加Excel辅助功能。

    ● v1.2.2[2021.03.31] 
        ○ 优化数据量较大时的速度。
    
    ● v1.2.1[2021.03.12] 
        ○ 修复RegExMatchAll函数有可能出现无限循环的问题。
        
    ● v1.2.0[2021.01.23] 
        ○ 修复筛选模式下起始行设置无效问题；
        ○ 修复有合并单元格时定位位置偏差问题。
        
    ● v1.1.9[2021.01.11] 
        ○ 修复v1.1.8版本的匹配次数不能设置问题；
        ○ 修复v1.1.8版本历史数据快捷输入因编码原因不能有效执行问题；
        ○ 修复v1.1.6版本后因增加默认忽略大小写，正则式为空不弹出提示问题。

    ● v1.1.8(可能因编码问题，历史及常用正则输入后无效，已撤回该版)[2021.01.10] 
        ○ 匹配模式默认改为全部匹配，之前版本为默认匹配1次；
        ○ 完善自定义菜单功能，常用正则一步到位。
        
    ● v1.1.7[2021.01.09] 
        ○ 增加常用正则、历史正则、常用替换、历史替换快捷输入；
        ○ 在输入框左半部按下鼠标中键>历史，在输入框右半部按下鼠标中键>常用。

    ● v1.1.6[2020.12.27] 
        ○ 增加默认忽略大小写；
        ○ 定位及筛选模式下，若选区仅为1个单元格（被认为未手动选区），则以整个数据区为对象。

    ● v1.1.5[2020.12.12] 
        ○ 改以选区方形区为数据区及备份区；
        ○ 调整筛选算法的逻辑关系； 
        ○ 增加单元格前缀单引号的检测;   
        ○ 修复了一些问题。 

    ● v1.1.4[2020.12.10] 
        ○ 采用了新的算法，性能上得到了显著提升；
        ○ 增加获取源数据方式的选择，以前版本默认为Text模式；
        ○ 增加Win+5热键>>获取选中单元格[Value Formula Text]三者结果的对比；
        ○ 以整张表为数据区及备份区。       
        
    ● v1.1.3[2020.12.03] 
        ○ 修复WPS选区优化问题；
        ○ 增加示例演示接口。

    ● v1.1.2[2020.6.13] 
        ○ 增加起始行输入（默认1）,当选择区含有整列时，可用此选项排除表头行；
        ○ 增加过滤隐藏行选项（默认过滤），隐藏行默认不执行操作；
        ○ 增加正则筛选功能。
  
    ● v1.1.1[2020.6.7] 
        ○ 修复WPS整合模式不响应问题；
        ○ 更改高分屏DPI自动缩放（没有测试环境，不知道是否可行） 。
 
    ● v1.1.0[2020.5.20] 
        ○ 重写程序界面，美化；
        ○ 增加程序开机自启功能。  
  
    ● v1.0.4[2020.5.12] 
        ○ 修复程序退出后，进程中不退出的问题；
        ○ 防止程序多次运行； 
        ○ 优化代码，防止出错。

    ● v1.0.3[2020.5.7] 
        ○ 增加自定义热键功能；
        ○ 增加反馈建议渠道； 
        ○ 增加程序设置功能：支持修改热键，在线人数。 
 
    ● v1.0.2[2020.5.4] 
        ○ 更新对WPS表格的支持；
        ○ 增加检查更新链接。
        
    ● v1.0.1[2020.4.26] 
        ○ 更新撤销功能，不限于1次，之前版本只能撤销1次。     
        
