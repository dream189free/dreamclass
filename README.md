# latex-template-dreamClass

## 简介

自用的课程实验报告模板。

## 安装

### 中文字体

本项目使用了下面列出的中文字体。如果您不喜欢，请在[CTeX](http://mirrors.ctan.org/language/chinese/ctex/ctex.pdf)的宏包选项中修改`fontset = sourcehan`以避免使用`ctex-fontset-sourcehan.def`所指定的字库。

- 思源黑体和思源宋体
    - 我们使用[这个项目](https://github.com/Pal3love/Source-Han-TrueType)中提供的字体。如果您的字体是从别处获得的，它们的文件名（和字体的名字？）或许和我们的对不上，此时需要对应修改`ctex-fontset-sourcehan.def`的内容。
- 方正新楷体、方正盛世楷书简体_粗和方正仿宋
    - 可以在[方正字库](https://www.foundertype.com/)上下载。个人非商用似乎并不收钱。

上述字体的两个供参考的存放位置是`~/.fonts`和`/usr/share/fonts/WHATEVER_YOU_WANT`。

### 英文字体

我们使用了Linux Libertine和TeX Gyre Cursor作为默认的英文字体。
如果您的LaTeX发行版没有正确地被安装，那么可能会找不到这些字体。

如果您是从TeX Live 2019的安装镜像中进行安装的，并且发现真的找不到这些字体，这说明您确实没有正确地安装它。可以参考[System font configuration for XeTEX and LuaTEX](http://www.tug.org/texlive/doc/texlive-en/texlive-en.html#x1-340003.4.4)解决。

或者如果不愿看的话，执行下面几条指令，其中`TEXMFSYSVAR = /usr/local/texlive/2019/texmf-var`。

```
sudo cp TEXMFSYSVAR/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive.conf
sudo fc-cache -fsv
```

### Pygments

我们使用[minted宏包](https://github.com/gpoore/minted)来作为插入高亮的代码块。而minted依赖Pygments，其安装方法可以参考[minted的手册](https://github.com/gpoore/minted/blob/master/source/minted.pdf)。或者如果您不愿查手册的话：
```
sudo pip3 install Pygments
```
大概能work。

如果没有安装`pip3`并且您正在使用`apt`作为包管理工具的话，可以使用
```
sudo apt install python3-pip
```
来安装。

如果`pip3`下载速度过于缓慢，可以参考[这里](https://mirrors.ustc.edu.cn/help/pypi.html)提供的方法把源切换到国内的镜像：
```
pip3 install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip3 config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
```

需要注意，在使用minted宏包之后，XeLaTeX的编译参数需要加上`-shell-escape`。

## 用法
1. 把`*.cls`和`*.def`丢到当前工作目录或者本地TDS目录树下。
   - 一个供参考的路径是`~/texmf/tex/latex/`。
2. 在`*.tex`的导言区加上`\documentclass{dreamClass}`。

## 示例

请看`test`文件夹。

## 题外话

### latexindent的perl的依赖

如果您刚刚通过上面的指令解决了找不到字体的问题，您的latexindent八成也跑不动。
您可以参考[这篇文章](https://zhuanlan.zhihu.com/p/50044410)来解决。
或者执行下面几条指令：
```
sudo cpan
install Log::Log4perl
install Log::Dispatch::File
install YAML::Tiny
install File::HomeDir
install Unicode::GCString
```

如果下载速度慢到无法忍受，可以首先运行`cpan`：
```
sudo cpan
```
并让其自动配置尽可能多的选项（大约需要您手动输入`yes`然后回车）。
然后进入`cpan`的shell，接着用：
```
o conf urllist http://mirrors.sohu.com/CPAN
o conf commit
```
把`cpan`的源换成国内的某个镜像。

最后**坐和放宽**，耐心等待所有依赖安装完毕。

### LaTeX入门
如果其实您根本就不懂如何使用LaTeX，我们强烈推荐您通过阅读[lshort-zh-cn](https://github.com/CTeX-org/lshort-zh-cn/releases)来入门。
