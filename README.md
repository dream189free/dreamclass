# latex-template-dreamClass

## 简介

自用的课程实验报告模板。

## 安装

### 中文字体

本项目使用了下面列出的中文字体。如果您不喜欢，请在[CTeX](http://mirrors.ctan.org/language/chinese/ctex/ctex.pdf)的宏包选项中修改`fontset = sourcehan`以避免使用`ctex-fontset-sourcehan.def`所指定的字体。

- `思源黑体`和`思源宋体`
    - 可以从Adobe[在GitHub上的相关repo](https://github.com/adobe-fonts)来取得这些文件。`思源黑体`更新频繁，提供细粒度的压缩包，方便选取地区限定的字形；`思源宋体`近年未见更新，也只提供了一个打包了**所有**字形的巨大的压缩包。
    - 本项目使用的是简体中文限定的思源字体。为方便计，你可以直接从TUNA的镜像中得到需要的文件。[这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-sans/SubsetOTF/CN/)是思源黑体的链接，[这里](https://mirrors.tuna.tsinghua.edu.cn/adobe-fonts/source-han-serif/SubsetOTF/CN/)是思源宋体的。
- `方正新楷体`、`方正盛世楷书简体_粗`和`方正仿宋`
    - 可以在[方正字库](https://www.foundertype.com/)上下载。个人非商用似乎并不收钱。
- `等距更纱黑体`
  - 似乎是唯一中英文按照2:1的比例严格对齐的等宽字体。
  - 可以在[e5invis的GitHub repo](https://github.com/be5invis/Sarasa-Gothic)里下载字体，请下载ttf版本，并且特别注意下载完成后不要直接全部解压——否则会得到**非常多**的字体；网络条件不好的话也可以从[TUNA的镜像](https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/sarasa-gothic-ttf-0.32.3.7z)下载。
  - 本项目使用的是`sarasa-mono-slab-sc-*.ttf`，字体名称是`等距更纱黑体 Slab SC`。

上述的两个供参考的存放位置是`~/.fonts`和`/usr/share/fonts/WHATEVER_YOU_WANT`。

特别地，如果您是WSL用户，可以考虑直接使用Windows中已经安装的字体，而不是复制一份到Linux中。具体地，您可以用管理员权限修改`/etc/fonts/local.conf`为：
```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <dir>/mnt/c/Windows/Fonts</dir>
</fontconfig>
```

### 英文字体

我们使用了Linux Libertine作为默认的英文衬线和无衬线字体。
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
pip install Pygments
```
大概能work。

如果没有安装`pip`并且您正在使用`apt`作为包管理工具的话，可以使用
```
sudo apt install python3-pip
```
来安装。

如果`pip`下载速度过于缓慢，可以参考[这里](https://mirrors.ustc.edu.cn/help/pypi.html)提供的方法把源切换到国内的镜像：
```
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
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
您可以参考[latexindent的文档](https://mirror.easyname.at/ctan/support/latexindent/documentation/latexindent.pdf)来安装这些依赖。

```
sudo apt install perl
sudo cpan -i App::cpanminus
sudo cpanm YAML::Tiny
sudo cpanm File::HomeDir
sudo cpanm Unicode::GCString
```

简单说，就是要用`cpanm`而不是`cpan`作为perl的包管理器。

如果您是macOS用户并且在安装`Unicode::GCString`时遇到问题，可以参考下面的博文（[原始链接](https://zzi.io/?cat=15)已无法访问）：

> 注意如果 perl 是 brew 安装的，每次 perl 升级后，会需要重新来一次。
>
> 根据 Homebrew 的说法，default non-brewed cpan modules are installed to the Cellar. If you wish
> for your modules to persist across updates we recommend using `local::lib`.
>
> 为了避免麻烦，可以
> ```
> PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
> echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> ~/.bash_profile
> ```
> 由于 CPAN 的系统过于老旧，用 CPAN 管理包非常麻烦且复杂，报错也经常难以搞清楚问题，推荐换成 cpanminus。
>
> 关于 Unicode::GCString 和 LineBreak 编译失败
> 另一个问题是，在 macOS 下，Unicode-LineBreak-2019.001 有可能无法成功编译。查看 log ，可以发现在编译 sombok / libsombok.a 后，链接时出现问题
> ```
> cc  -mmacosx-version-min=10.13 -bundle -undefined dynamic_lookup -L/usr/local/lib -fstack-protector-strong  LineBreak.o  -o blib/arch/auto/Unicode/LineBreak/LineBreak.bundle sombok/libsombok.a
>
> ld: warning: ignoring file sombok/libsombok.a, file was built for archive which is not the architecture being linked (x86_64): sombok/libsombok.a
> ```
> 这个问题早年做过 iOS 开发的人都很熟悉，选错 device 和 simulator 的话经常看见类似 file was built for x86_64 which is not the architecture being linked 的错误。。所以说明 sombok 的编译一定是在某处出了问题，排查一下即可发现是安装了 GNU binutils 中的 ar 与 macOS 的 BSD ar 冲突搞的鬼，暂时将其卸载即可。

### LaTeX入门
如果其实您根本就不懂如何使用LaTeX，我们强烈推荐您通过阅读[lshort-zh-cn](https://github.com/CTeX-org/lshort-zh-cn/releases)来入门。

test