[TOC]
# Vim使用总结

## 1. Vim简介
> Vim编辑器是功能强大的跨平台文本文件编辑工具，继承自Unix系统的Vi编辑器，支持Linux/Mac OSX/Windows系统，利用它可以建立、修改文本文件。

## 2. Vim的四种操作模式

 - **普通模式 (normal-mode， 也叫编辑模式, 正常模式)**
    在普通模式中，用户可以执行一般的编辑器命令，比如移动光标，删除文本等等。这也是Vim启动后的默认模式。这正好和许多新用户期待的操作方式相反（大多数编辑器默认模式为插入模式）。

 - **插入模式 (insert-mode)**
    在这个模式中，大多数按键都会向文本缓冲中插入文本。大多数新用户希望文本编辑器编辑过程中一直保持这个模式。
在插入模式中，可以按ESC键回到普通模式。

 - **命令模式 (command-mode， 也叫底行模式 last-line-mode)**
    在命令模式中可以输入会被解释成并执行的文本。例如执行命令（":"键），搜索（"/"和"?"键）或者过滤命令（"!"键）。在命令执行之后，Vim返回到命令行模式之前的模式，通常是普通模式。

 - **可视模式 (visual-mode)**
    这个模式与普通模式比较相似。但是移动命令会扩大高亮的文本区域。高亮区域可以是字符、行或者是一块文本。当执行一个非移动命令时，命令会被执行到这块高亮的区域上。Vim的"文本对象"也能和移动命令一样用在这个模式中。


## 3. Vim命令的使用

### 3.1 打开文件

 - 打开文件(如果没有则创建)并编辑, 光标默认在首行
```shell
vim a.txt
```
 - 打开文件, 并将光标置于尾行
```shell
vim + hello.txt
```
 - 光标置于第 3行 (正数)
```shell
vim +3 hello.txt
```
 - 光标置于 abc字符串第一次出现的行 (按 字母n 可以在该字符串出现的地方来回切换)
```shell
vim +/abc hello.txt
```
 - 同时打开多个文件 (按 ':n'切换到下一个编辑项, 按 ':N'切换到上一个, 全部编辑完毕方可保存)
```shell
vim a.txt b.txt c.txt
```

### 3.2 移动光标
> 用 Vim编辑文件的时候, 最先进入的就是普通模式, 此时的主要操作是移动光标,  一旦光标移到到所要的位置，就可以进行剪切和粘贴正文块，删除正文和插入新的正文。

当完成所有的编辑工作后，需要保存编辑器结果，退出编辑程序回到终端，可以发出ZZ命令，连续按两次大写的Z键。

---
#### 3.2.1 基本操作
```shell
h    ->     光标左移, 每次移动一个字符
j    ->     光标下移, 同上
k    ->     光标上移, 同上
l    ->     光标右移, 同上
```
---
#### 3.2.2 翻页操作
```shell
ctrl + f    ->      向下翻一页, 相当于page down     (front)
ctrl + b    ->      向上翻一页, 相当于page up       (back)
ctrl + d    ->      向下翻半页                     (down)
ctrl + u    ->      向上翻半页                     (up)
```
---
#### 3.2.3 行内移动光标
```shell
0       ->      数字0, 左移光标到本行的开始     (home键)
^       ->      移动光标, 到本行的第一个非空字符 (home键)
$       ->      右移光标到本行的末尾            (end键)
t,      ->      到逗号前的第一个字符, 逗号可以变成其他字符
w       ->      右移光标到下一个字的开头
b       ->      左移光标到前一个字的开头
e       ->      右移光标到下一个字的结尾

注: 以下是通过搜索行内内容造成的光标移动
g_      ->      到本行最后一个不是 blank字符的位置
fa      ->      到下一个为a的字符处, 你也可以 fs到下一个为 s的字符
3fa     ->      在当行查找第三个出现的 a
F       ->      和f一样, 方向相反
t,      ->      到逗号前的第一个字符, 逗号可以变成其他字符(字母标点都可以)
T       ->      和t一样, 方向相反
```
---
#### 3.2.4 屏幕内移动光标
```shell
H       ->      将光标移动到屏幕上的起始行(或最上行)
M       ->      将光标移动到屏幕中间
L       ->      将光标移到屏幕最后一行
```
注: 同样需要注意字母的大小写, H和L命令还可以加数字
如 3H表示将光标移动到屏幕的第三行, 4L表示将光标移动到屏幕的倒数第四行

#### 3.2.5 全文范围移动光标
```shell
(       ->      移动到前一句的开始 (以 .或空行分隔的叫一句话)
)       ->      移动到后一句的开始
{       ->      移动到当前段落的开始 (以空行分隔)
}       ->      移动到下一个段落的开始
gg      ->      将光标定位到第一行起始位置
G       ->      将光标定位到文件最后一行起始位置
NG      ->      将光标定位到第 N行的起始位置, 例如 37G
```

#### 3.2.6 搜索内容以移动光标
```shell
行内移动
g_      ->      到本行最后一个不是 blank字符的位置
fa      ->      到下一个为a的字符处, 你也可以 fs到下一个为 s的字符
3fa     ->      在当行查找第三个出现的 a
F       ->      和f一样, 方向相反
t,      ->      到逗号前的第一个字符, 逗号可以变成其他字符(字母标点都可以)
T       ->      和t一样, 方向相反


全文移动
*       ->      当光标留在一个单词上, *键会在文件内搜索该单词, 继续按 *键或 n键会跳转到下一处
#       ->      当光标留在一个单词上, #键会在文件内搜索该单词, 继续按 #键或 N键会跳转到上一处
```
---

#### 3.2.7 搜索和匹配
> 查找文件中指定字或短语出现的位置

方法: 键入字符 /, 后面跟要搜索的字符串, 然后按下回车键   (正向搜索); 键入 n命令(next)可以继续向下搜索, 找到这一字符串下次出现的位置; 用 ?取代 /可以实现反向搜索
```shell
/str1       ->      正向搜索字符串 str1
n           ->      继续搜索, 找出 str1字符串下次出现的位置
N           ->      继续搜索, 找出 str1字符串上一次出现的位置
?str2       ->      反向搜索字符串 str2
```
---

### 3.3 插入模式

#### 3.3.1 进入插入模式
```shell
i    ->     在光标左侧插入正文
a    ->     在光标右侧插入正文
o    ->     在光标所在行的下一行添加新行
O    ->     在光标所在行的上一行添加新行
I    ->     在光标所在行的开头插入
A    ->     在光标所在行的末尾插入
```

#### 3.3.2 退出插入模式
退出插入模式的方法是, 按 Esc键或组合键 ctrl + [
推出插入模式之后, 将会进入普通模式



### 3.4 替换和删除

#### 3.4.1 替换
替换单个字符
将光标定位于文件内指定位置后, 可以用其他字符来替换光标所指向的字符.
```shell
rc   ->  用 c代替光标所指向的当前字符
nrc  ->  用 c代替光标所指向的后 n个字符
```
注: **在 Vim的光标操作中, 对光标之前的操作是不包含光标的, 而向后的操作是包含光标所在字符的。**

vim常规的替换命令有 c和 s, 结合 vim的其他特性可以实现基础的替换功能, 不过替换命令执行以后, 通常会由普通模式进入插入模式。
```shell
s       ->      用输入的正文替换光标所指向的字符 (先删掉光标所在字符, 再进入插入模式)
S       ->      删除当前行的内容, 并进入插入模式
ns      ->      用输入的正文代替光标右侧 n个字符
nS      ->      删除当前行在内的 n行, 并进入插入模式
cw      ->      用输入的正文替换光标右侧的字
cW      ->      用输入的正文替换从光标到行尾的全部字符 (同 c$)
ncw     ->      用输入的正文代替光标右侧的 n个字
cb      ->      用输入的正文替换光标左侧的字
ncb     ->      用输入的正文替换光标左侧的 n个字
c$      ->      用输入的正文替换从光标开始到本行末尾的所有字符
c0      ->      用输入的文本替换从本行开头到光标的所有字符
```
---
#### 3.4.2 删除
从当前光标位置删除一个或多个字符或一行多行.

vim常规的删除命令是 d, x (前者删除行, 后者删除字符), 结合 vim的其他特性可以实现
删除的基本功能.
将光标定位于文件内指定位置后, 可以用其他字符来替换光标所指向的字符, 或从当前光标位置删除一个或多个字符或一行, 多行. 例如:

```shell
x       ->      删除光标所指的当前字符
nx      ->      删除光标所指的前 n个字符
dw      ->      删除光标右侧的字
ndw     ->      删除光标右侧的 n个字    例如: 3dw
db      ->      删除光标左侧的字 (不包括光标所在字符)
ndb     ->      删除光标左侧的 n个字
dd      ->      删除光标所在行, 并去除空隙
ndd     ->      删除 n行内容, 并去除空隙
d$      ->      从当前光标起删除字符直到行的结束
d0      ->      从当前光标起删除字符直到行的开始
J       ->      删除本行的回车符并和下一行合并
D       ->      同 d$
d)      ->      删除到下一句的开始
d}      ->      删除到下一段的开始
d+回车 ->       删除两行
dG      ->      删除全文
```

规律总结:
1. 默认操作的区域是光标右侧, 而对光标左侧的操作, 命令中通常会包含 b字符。
2. 默认操作的是字符, 而对字(单词)的操作, 命令中通常会包含 w字符。
3. 命令前加的数字表示操作的字符数。

---

### 3.5 剪切, 粘贴和复制

#### 3.5.1 剪切
从正文删除的内容(如字符, 字或行)并没有真正丢失,  而是被剪切并复制到了一个内存缓冲区中, 用户可以将其粘贴到正文中的指定位置。


#### 3.5.2 粘贴
如果缓冲区的内容是字符或字, 直接粘贴在字符的后面或前面; 如果缓冲区的内容为整行, 执行上述粘贴命令, 将会粘贴到当前光标所在行的上一行或下一行。
```shell
p    ->     小写字母p, 将缓冲区的内容粘贴到光标的后面
P    ->     大写字母P, 将缓冲区的内容粘贴到光标的前面
```
---
#### 3.5.3 复制
有时需要复制一段正文到新位置, 同时保留原有位置的内容. 这种情况下, 首先应当把指定内容复制(而不是剪切)到内存缓冲区。
```shell
yy      ->      复制当前行到内存缓冲区
nyy     ->      复制 n行内容到内存缓冲区  (包含当前行)
"+y     ->      复制一行到操作系统的剪切板
"+nyy   ->      复制 n行到操作系统的剪切版
ggyG    ->      复制全文
```

#### 3.5.4 快速复制粘贴多行
1. 将光标移动到要复制的文本开始的地方, 按 v进入可视模式 (相当于用 shift +方向键的选中)。
2. 将光标移动到要复制的文本的结束的地方, 按 y复制, 此时 vim会自动将光标定位到选中文本开始的地方, 并退出可视模式。
3. 移动光标, 在需要的地方粘贴

推荐使用下列命令
```shell
9, 15 copy 16 或 9, 15 co 16   ->  将第9行到15行的数据, 复制到第16行
9, 15 move 16 或 9, 15 m 16    ->  将第9行到15行的数据, 剪切到第16行
```
---
### 3.6 撤销和重复
```shell
u    ->     撤销前一条命令的结果
.    ->     重复最后一条修改正文的命令
```
---

### 3.7 命令模式
> 在Vim的命令模式下，可以使用复杂的命令。
在编辑模式下键入 : ，光标就跳到屏幕最后一行，并在那里显示冒号，此时已进入命令模式。命令模式又称 底行模式(末行模式) ，用户输入的内容均显示在屏幕的最后一行，按回车键，Vim 执行命令。

#### 3.7.1 文件操作
```shell
:w      ->      将文件的修改从内存写入硬盘中 (保存文件)
:q      ->      退出当前vim编辑器打开的文件 (注意, 并没有保存)
:!      ->      表示强制执行
:ls     ->      列出编辑器中打开的所有文件 (同时编辑多个文件时使用)
:n      ->      切换到后一个文件 (同时编辑多个文件时使用)
:N      ->      切换到上一个文件 (同时编辑多个文件时使用)

:e filename     ->      在已经启动的vim中打开一个文件
:w filename     ->      文件另存为
:q!             ->      放弃所有修改, 退出编辑程序.
:wq             ->      保存并退出可以将两条命令结合起来使用 (注意命令顺序, 先保存后退出)


:r c.txt        ->      读取 c.txt文件的内容, 插入当前光标所在行的后面
:e d.txt        ->      编辑新文件 d.txt,  原有内容必须先保存才能操作
:f a.txt        ->      将当前文件重命名为 a.txt (需要保存)
:f              ->      打印当前文件名称和状态, 如文件的行数, 当前光标所在的行号等

```

#### 3.7.2 字符串搜索
命令模式也可以进行字符串搜索, 给出一个字符串,可以通过搜索该字符串到达指定行。
如果希望进行正向搜索, 将待搜索的字符串置于两个 /之间; 如果希望反向搜索, 则将字符串放在两个 ?之间。

```shell
:/str/      ->  正向搜索, 将光标移到下一个包含字符串 str的行 (n or N)
:?str?      ->  反向搜索, 将光标移到上一个包含字符串 str的行 (n or N)
:/str/w a.txt            ->  正向搜索, 并将第一个包含字符串 str的行写入 a.txt文件
:/str1/, /str2/w b.txt   ->  反向搜索, 并将包含字符串 str1的行至包含字符串 str2的行写入 b.txt文件

```

#### 3.7.3 行号与文件
编辑中的每一行正文都有自己的行号, 用下列命令可以将光标移动到指定行
```shell
:n      ->      将光标移动到第 n行
```
命令模式下, 可以规定命令操作的行号范围. 数值用来指定绝对行号;
字符"." 表示光标所在行的行号;
字符"$"表示正文最后一行的行号;
简单的表达式, 例如".+5" 表示当前行往下的第 5行
```shell
:345            ->      将光标移到第 345行
:3w hello.txt   ->      将第3行写入 hello.txt文件
:5, 8w h.txt    ->      将第 5行至第 8行的内容写入 h.txt文件 (包括第5行和第8行)
:5, .w a.txt    ->      将第 5行至当前行的内容写入 a.txt文件 (包括第5行和当前行)
:., $w b.txt    ->      将当前行至最后一行写入b.txt 文件 (包括 ...)
:., .+5w c.txt  ->      从当前行开始将 6行内容写入 c.txt文件 (包括 ...)
:1, $w d.txt    ->      将所有内容写入 d.txt文件 (相当于 :w d.txt)
```

#### 3.7.4 Vim中的正则表达式
当给 Vim指定搜索字符串时, 可以包含具有特殊含义的字符. 包含这些特殊字符的搜索字符串称为正则表达式 (Regular Expressions).

```shell
:/^struct/      ->      搜索一行正文, 这行正文的开头包含 struct字

常用的正则构造
^                 放在字符串前面, 匹配行首的字
$                 放在字符串后面, 匹配行尾的字
\<                匹配一个字的字头
\>                匹配一个字的字尾
.                 匹配任何单个正文字符
[str]             匹配 str中任意单个字符
[^str]            匹配任何不在 str中的单个字符
[a-z]             匹配 a到 z之间的任意字符
\                 转义后面的字符

字符
x                 字符x
\t                制表符
\n                换行符
\r                回车符
\f                换页符

字符类
[abc]             a 或 b 或 c (简单类)
[^abc]            任何字符, 除了a,b,c (否定)
[a-zA-Z]          a到 z, 或 A到 Z, 两头的字母包括在内 (范围)
[a-d[m-p]]        a到 d, 或 m到 p, 等同 [a-dm-p]  (并集)
[a-z&&[def]]      d, e或 f (交集)
[a-z&&[^bc]]      a到 z, 除了b和 c,  等同[ad-z]  (减去)
[a-z&&[^m-p]]     a到 z, 而非m到 p,  等同[a-lq-z]  (减去)

预定义字符类
.                 任何字符 (与行结束符可能匹配也可能不匹配)
\d                数字, [0-9]
\D                非数字, [^0-9]
\s                空白字符: [ \t\n\x0B\f\r]
\S                非空白字符 [^\s]
\w                单词字符: [a-zA-Z_0-9]
\W                非单词字符:  [^\w]

边界匹配器
^                 行的开头
$                 行的结尾
\b                单词边界
\B                非单词边界
\A                输入的开头
\G                上一个匹配的结尾
\Z                输入的结尾, 仅用于最后的结束符 (如果有的话)
\z                输入的结尾

数量类
*                 前一个字符出现 0次或多次
+                 前一个字符出现 1次或多次
?                 前面一个字符出 0次或 1次
{n}               恰好 n次
{n,}              至少 n次
{n, m}            至少 n次, 但不超过 m次

```
---
#### 3.7.5 正文替换 (正则匹配)
利用 :s命令可以实现字符串的替换. 具体用法包括
```shell
:%s/str1/str2           用字符串 str2替换行中首次出现的字符串 str1 (替换所有出现 str1的行)
:s/str1/str2/g          用字符串 str2替换行中所有出现的字符串 str1 (仅替换当前行)
:.,$ s/str1/str2/g      用字符串 str2替换正文当前行到末尾所有出现的字符串 str1
:1,$ s/str1/str2/g      用字符串 str2替换正文中所有出现的字符串 str1
:g/str1/s//str2/g       功能同上
:m, ns/str1/str2/g      将从 m行到 n行的 str1替换成 str2
```

从上述替换命令可以看到
 1. g放在命令末尾, 表示对搜索字符串的每次出现进行替换, 不止匹配每行的第一次出现;
 2. 不加g, 表示只对搜索字符串的首次出现进行替换.
 3. g放在命令开头, 表示对正文中所有包含搜索字符串的行进行替换操作.
 4. s表示后面跟着一串替换的命令.
 5. %表示替换的范围是所有行, 即全文.
 6. 另外一个实用的命令, 在 vim中统计当前文件中字符串 str1出现的次数, 可以替换命令的变形 `:%s/str1/&/gn`

---

#### 3.7.6 删除正文 (正则匹配)
在命令模式下, 同样可以删除正文的内容.
Vim的初级删除命令是 d, 高级删除命令可以使用 正则替换的方式
```shell
:d          删除光标所在行
:3d         删除3行
:.,$ d      删除当前行直至正文末尾
:/str1/, /str2/d                删除从字符串 str1到 str2的所有行
:g/^\(.*\)$\n\1$/d              删除连续相同的行, 保留最后一行
:g/\%(^\1$\n\)\@<=\(.*\)$/d     删除连续相同的行，保留最开始一行
:g/^\s*$\n\s*$/d                删除连续多个空行，只保留一行空行
:5,20s/^#//g                    删除5到20行开头的 # 注释
```

#### 3.7.7 恢复文件

 1. Vim在编辑某个文件时, 会另外生成一个临时文件, 这个文件名称通常以 .开头, 并以 .swp   结尾.
 2. Vim在正常退出时, 该文件被删除, 若意外退出, 而没有保存文件的最新修改内容,   则可以使用恢复命令 :recover来恢复文件,  也可以在启动 Vim时用 -r选项

---
#### 3.7.8 选项设置
为控制不同的编辑功能, Vim提供了很多内部选项. 利用 :set命令可以设置选项.
基本语法为: `:set option` -> 设置选项 option

常见的 option选项包括:
```shell
autoindent            设置该选项, 则正文自动缩进
ignorecase            设置该选项, 则忽略规则表达式中大小写的区别
number                设置该选项, 则设置正文行号
ruler                 设置该选项, 则在屏幕底部显示光标所在行, 列的位置
tabstop               设置按 tab键跳过的空格数, 例如 :set tabstop=n, n的默认值为8
mk                    将选项保存在当前目录的 .exrc文件中

```

#### 3.7.9 Shell切换
在编辑模式文件的过程中, 如果想要执行 linux命令, 可以输入以下命令, 执行完 linux命令, 按下回车键即回到编辑界面
```shell
:!shell_command        执行完 shell_command后回到 vim
```
这称为 shell切换, 他允许执行任何可以在标准的 Shell提示符下执行的命令. 当这条命令
  执行完毕, 控制返回给编辑程序, 又可以继续编辑对话过程.

---
#### 3.7.10 分屏
普通的 vim模式, 打开一个 vim程序只能查看一个文件, 如果想同时查看多个文件,
  就需要用到 Vim分屏和标签页功能

Vim的分屏, 主要有两种方式: 上下分屏(水平分屏)和左右分屏(垂直分屏), 在命令模式下分别敲入一下命令即可
```shell
:split (可用缩写 :sp)         上下分屏
:vsplit (可用缩写 :vsp)       左右分屏
```
另外, 也可以在终端里启动 vim时就开启分屏操作
```shell
vim -On file1 file2          打开 file1和 file2, 垂直分屏
vim -on file1 file2          打开 file1和 file2, 水平分屏
```
理论上, 一个 vim窗口, 可以分为多个 vim屏幕, 切换屏幕需要用键盘快捷键, 命令分别有:
```shell
ctrl + w + h                  切换到当前分屏的左边一屏
ctrl + w + l                  切换到当前分屏的右边一屏
ctrl + w + k                  切换到当前分屏的上边一屏
ctrl + w + j                  切换到当前分屏的右边一屏
```

 - 即键盘上的 `h,j,k,l` 4个Vim专有方向键, 配合 `ctrl`键加 `w`键(window), 就能跳转到目标分屏.
 - 另外, 也可以按 `ctrl + w + w`来跳转分屏, 不过跳转方向则是在当前 Vim的所有分屏中, 按照逆时针方向跳转
 - 下面是改变尺寸的一些操作, 主要是高度, 对于宽度你可以使用 `ctrl + w + <` 或是   `ctrl + w + >` 这可能需要最新的版本才支持
```shell
ctrl + w =        让所有的屏都有一样的高度
ctrl + w +        增加高度
ctrl + w -        减少高度
```
---
#### 3.7.11 在标签页中打开多个文件
Vim的标签(tab)页, 类似浏览器的标签页, 一个标签页打开一个 Vim窗口, 一个 Vim的窗口支持 n个分屏


```shell
:tabnew                 在 Vim中新建一个标签
:tabnew filename        在新建标签页的同时打开一个文件
```
Vim中的每个标签页有一个唯一的数字序号, 第一个标签页的序号是 0, 从左向右依次加一
关于标签页有一系列操作指令, 简介如下
```shell
:tabn[ext]          转到下一个标签页
:tabp[revious]      转到上一个标签页
:tabN[ext]          转到上一个标签页, 同 tabp
:tabfir[st]         转到第一个标签页
:tabr[ewind]        转到第一个标签页, 同 tabfir
:tabl[ast]          转到最后一个标签页
:tabc[lose]         关闭当前标签页
:tabo[nly]          关闭所有除了当前标签页以外的所有标签页
:tabf[ind]          寻找 path里的文件, 并在新标签页里编辑之
:tabnew filename    在新标签页里编辑文件
:tabe[dit]          在新标签页里编辑文件, 同 tabnew
:tabm[ove]          把标签页移到序号为 N的位置
```

## 4. 与外部工具集成
Vim可以与很多外部程序集成, 功能十分强大, 比如 diff, ctags, sort, xxd等等, 下面选取几个简单介绍以下

### 4.1 与 diff集成
linux结合 diff用来对比两个文件的内容, 不过对比结果显示在终端里, 可读性比较差.
  结合 vim, 在终端里可以直接输入 vindiff, 后面跟两个文件名作为参数
```shell
vimdiff file1 file2
```
即可在 Vim里分屏显示两个文件内容的对比结果, 对文件内容差异部分进行高亮标记, 还可以同步滚动两个文件内容, 更可以同时修改文件内容, 方便程度和用户体验大大提高.


除了在终端里开启 vimdiff功能, 也可以打开 Vim后, 在 vim的命令模式输入相关命令来开启vimdiff功能
```shell
vim -d file1 file2
```
如果你现在已经开启了一个文件, 想让 vim帮你区分当前文件和 abc.txt有什么区别, 可以在 Vim中用 diffsplit的方式打开第二个文件, 这时候 Vim会用 split (分上下两屏)的方式开启第二个文件, 并且通过颜色, fold来显示两个文件的区别
```shell
:diffsplit file2
```

## 5. Vim配置

### 5.1 个人配置
/home/~/.vimrc
```
"Use vundle to manage plugin, required turn file type off and nocompatible
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"Let vundle manage vundle,
Bundle 'gmarik/vundle'
"My bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
let mapleader=","
nmap <silent> <leader>t :NERDTree<cr>
"tab切换
"nnoremap <leader>t gt
"nnoremap <leader>r gTrequired

"Brief help of vundle
	":BundleList
	":BundleInstall
	":BundleSearch
	":BundleClean
	":help vundle
"End brief help

"Show line number, command, status line and so on
set history=1000
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=2
set scrolloff=3

"Fill space between windows
set fillchars=stl:\ ,stlnc:\ ,vert:\

"Turn off annoying error sound
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
colorscheme desert
set background=dark
set cursorline
set cursorcolumn

"Configure backspace to be able to across two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set cindent

"File, backups and encoding
set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"Gvim config
if has("gui_running")
	colorscheme solarized
endif

set guifont=DejaVu\ Sans\ Mono\ 15
set guioptions=aegic



```
## 6. Vim插件安装

### 6.1 插件管理器 Vundle
1. 需要事先安装 git
2. 在用户的主目录中建立 .vim目录, 在 .vim目录中建立 bundle目录, 以后 Vundle自动下载的插件都保存在这里, 然后, 进入 Bundle目录, 使用 git clone 命令下载 vundle
3. 在用户目录中编辑 .vimrc(vim个人配置文件, 只对当前用户生效), 参考上面的配置文件


```shell
sudo apt-get install git    # 已安装的则不需要这一步

mkdir .vim
cd .vim
mkdir bundle
cd bundle
git clone https://github.com/gmarik/vundle.git
```

### 6.2 Vundle插件的使用
1. Vundle 可以自动下载和安装插件，只需要在“My Bundles Here”注释后面使用 Bundle 命令把所需要的插件列出来，每个插件一行， 然后运行 `:BundleInstall` 命令即可。
2. Vundle 支持 github.com 和 Vim 的官网 vim.org 。前面的配置文件中，solarized 配色方案就是 Vundle 从 github.com 上下载的插件。
3. 要删除一个插件，首先要从配置文件中将 Bundle 'matrix.vim--Yang' 这一行删掉或注释掉，然后运行 `:BundleClean` 命令

```shell
"My bundles here:
Bundle 'altercation/vim-colors-solarized'   " solarized配色
```

### 6.3  安装 NERDTree(文件目录插件)

 - 在 .vimrc中做如下配置
```shell
Bundle 'scrooloose/nerdtree'
let mapleader=","
nmap <silent> <leader>t :NERDTree<cr>
"tab切换
nnoremap <leader>t gt
nnoremap <leader>r gT
```
 - 基本操作
```shell
,+t         ->   打开文件目录
ctrl+w      ->   窗口切换
h, j, k, l  ->   文件定位
q           ->   退出目录

打开文件(在目录标签):
o           ->    直接打开
t           ->    标签页打开
T           ->    后台标签页打开
```

### 6.4 安装代码提示工具 YouCompleteMe
参考 [VIM自动补全神器 — YouCompleteMe 安装全教程][1]


## 7. 参考文章

 1. [Vim入门基础][2]
 2. [跟我一起学Vim][3]
 3. [在Linux下打造属于自己的Vim][4]
 4. [VIM自动补全神器 — YouCompleteMe 安装全教程][5]
 5. [Vim简明教程][6]
 6. [在vim中快速复制粘贴多行][7]


  [1]: http://blog.csdn.net/mr_zing/article/details/44263385
  [2]: http://www.jianshu.com/p/bcbe916f97e1
  [3]: http://ju.outofmemory.cn/entry/79671
  [4]: http://www.cnblogs.com/youxia/p/linux002.html
  [5]: http://blog.csdn.net/mr_zing/article/details/44263385
  [6]: http://blog.csdn.net/niushuai666/article/details/7275406
  [7]: http://www.cnblogs.com/MMLoveMeMM/articles/3707287.html
