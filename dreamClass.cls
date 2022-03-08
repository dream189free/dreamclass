%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% # Dream Class
%% # Author: Tianyi Liu <tyi.liu@outlook.com>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dreamClass}

%%%%%%%%%%%%%%%%%%%%%%
% CTeX宏集
%%%%%%%%%%%%%%%%%%%%%%

% sub3section(paragraph的格式改变为section的样子), sub4section(subparagraph的也一起变), NULL
% linespread = <float>(行距，默认1.3倍)
% zihao =-4(小四号), 5(五号), false(使用文档类原有设置)
\LoadClass[UTF8, fontset = none, zihao = 5, sub3section]{ctexart}
% 计数一直到subsubsection
\setcounter{secnumdepth}{3}
\ctexset{
    % 章节标题格式
    % 统统左对齐
    section/format = \Large\bfseries\sffamily\raggedright,
    subsection/format = \large\bfseries\sffamily\raggedright,
    subsubsection/format = \normalsize\bfseries\sffamily\raggedright,
    paragraph/format = \normalsize\bfseries\sffamily\raggedright,
    subparagraph/format = \normalsize\bfseries\sffamily\raggedright
}

%%%%%%%%%%%%%%%%%%%%%%
% 页面大小
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[paper=a4paper]{geometry}
\geometry{
    % MS Word的默认页边距
    top = 2.54cm,
    bottom = 2.54cm,
    left = 3.18cm,
    right = 3.18cm
}

%%%%%%%%%%%%%%%%%%%%%%
% 英文字体
%%%%%%%%%%%%%%%%%%%%%%

\setromanfont[Scale=1.04]{LibertinusSerif}[
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-Italic,
  BoldItalicFont = *-BoldItalic,
  Extension = .otf
]
\setsansfont{LibertinusSans}[
  UprightFont = *-Regular,
  BoldFont = *-Bold,
  ItalicFont = *-Italic,
  Extension = .otf
]
\setmonofont[Scale=0.9]{sarasa-mono-latin}[
  UprightFont = sarasa-mono-slab-sc-light,
  BoldFont = sarasa-mono-slab-sc-regular,
  ItalicFont = sarasa-mono-slab-sc-lightitalic,
  BoldItalicFont = sarasa-mono-slab-sc-italic,
  Extension = .ttf
]

  \setCJKmainfont{source-han-serif}
  [
    UprightFont = Source-Han-Serif-SC-Regular,
    BoldFont = Source-Han-Serif-SC-Bold,
    ItalicFont = FZNewKai-Z03,
    BoldItalicFont = FZShengShiKaiShuS-B-GB
  ]
  \setCJKsansfont{source-han-sans}
  [
    UprightFont = Source-Han-Sans-SC-Normal,
    BoldFont = Source-Han-Sans-SC-Medium,
    ItalicFont = FZNewKai-Z03,
    BoldItalicFont = FZShengShiKaiShuS-B-GB
  ]
  \setCJKmonofont{sarasa-mono}[
    UprightFont = Sarasa-Mono-Slab-SC-Light,
    BoldFont = Sarasa-Mono-Slab-SC-Regular,
    ItalicFont = Sarasa-Mono-Slab-SC-Light-Italic,
    BoldItalicFont = Sarasa-Mono-Slab-SC-Italic
  ]

  \setCJKfamilyfont{zhsong}{source-han-serif}
  \setCJKfamilyfont{zhhei}{source-han-sans}
  \setCJKfamilyfont{zhkai}{fz-kai}
  [
    UprightFont = FZNewKai-Z03,
    BoldFont = FZShengShiKaiShuS-B-GB,
    ItalicFont = Source-Han-Serif-SC-Regular,
    BoldItalicFont = Source-Han-Serif-SC-Bold
  ]
  \setCJKfamilyfont{zhfs}{sarasa-mono}

\NewDocumentCommand \songti     { } { \CJKfamily { zhsong  } }
\NewDocumentCommand \heiti      { } { \CJKfamily { zhhei   } }
\NewDocumentCommand \kaishu     { } { \CJKfamily { zhkai   } }
\NewDocumentCommand \fangsong   { } { \CJKfamily { zhfs    } }

%%%%%%%%%%%%%%%%%%%%%%
% 公式和符号
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{bm}
\newcommand*{\dif}{\mathop{}\!\mathrm{d}}

%%%%%%%%%%%%%%%%%%%%%%
% 定理
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsthm}

\theoremstyle{plain}
\newtheorem{theorem}{定理}[section]
\newtheorem{lemma}{引理}[section]
\newtheorem{proposition}{命题}[section]
\newtheorem{corollary}{推论}[section]

\newtheorem{problem}{问题}[section]
\newtheorem{exercise}{习题}[section]
\newtheorem{definition}{定义}[section]

\newtheorem{remark}{评论}[section]
\newtheorem{note}{注记}[section]

%%%%%%%%%%%%%%%%%%%%%%
% 算法（algorithm2e）
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amssymb}
\RequirePackage[ruled, linesnumbered, noend, vlined]{algorithm2e}
\SetAlgorithmName{算法}{algorithmautoref}{算法列表}
\SetKwInput{KwData}{输入}
\SetKwInput{KwResult}{输出}
\RequirePackage{etoolbox,xpatch}
\AtBeginEnvironment{algorithm}{\let\textnormal\ttfamily}
\SetAlFnt{\small}
\SetKw{Continue}{\textbf continue}
\SetKw{Break}{\textbf break}
\SetKwRepeat{Do}{do}{while}
\SetKwProg{Def}{函数}{:}{}

%%%%%%%%%%%%%%%%%%%%%%
% 计数器
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{chngcntr}
\counterwithin{equation}{section}
\counterwithin{figure}{section}
\counterwithin{table}{section}

%%%%%%%%%%%%%%%%%%%%%%
% 枚举环境间距
%%%%%%%%%%%%%%%%%%%%%%

% 还是从jyy老师的山寨nju-thesis里抄来的
\RequirePackage[shortlabels]{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}

%%%%%%%%%%%%%%%%%%%%%%
% 作者
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{authblk}

%%%%%%%%%%%%%%%%%%%%%%
% 环绕式插图
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\graphicspath{{resources/}{pic/}}
\RequirePackage{multirow}

%%%%%%%%%%%%%%%%%%%%%%
% 说明文字、代码和浮动体
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[section]{placeins}
\RequirePackage{float}

\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{heitibf}{\bf\heiti}
\DeclareCaptionFont{heiti}{\heiti}
\captionsetup{font=small}
\captionsetup[table]{position=top,textfont=heiti,labelfont=heitibf}
\captionsetup[figure]{position=below,textfont=heiti,labelfont=heitibf}
\captionsetup[listing]{position=below,textfont=heiti,labelfont=heitibf}

\RequirePackage{booktabs}
\RequirePackage[section, newfloat]{minted}
\RequirePackage{xcolor}
\RequirePackage{aliascnt}
\RequirePackage{hyperref}

\hypersetup{
    pdfencoding=unicode,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfborder=0 0 0,
    colorlinks=true,
    linkcolor=red!50!black,
    anchorcolor=blue!50!black,
    citecolor=green!50!black
}

\setminted{autogobble, breaklines, breakanywhere, fontsize=\small, python3, tabsize=4, baselinestretch=1, mathescape, escapeinside=||}

% remove colorbox and fcolorbox style from minted
\makeatletter
\AtBeginEnvironment{minted}{\dontdofcolorbox}
\def\dontdofcolorbox{
    \renewcommand\fcolorbox[4][]{##4}
}
\xpatchcmd{\inputminted}{\minted@fvset}{\minted@fvset\dontdofcolorbox}{}{}
\xpatchcmd{\mintinline}{\minted@fvset}{\minted@fvset\dontdofcolorbox}{}{}
\makeatother

\SetupFloatingEnvironment{listing}{name=代码}
\SetupFloatingEnvironment{listing}{listname=代码列表}



%%%%%%%%%%%%%%%%%%%%%%
% 绘图
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}

%%%%%%%%%%%%%%%%%%%%%%
% 参考文献
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{gbt7714}

%%%%%%%%%%%%%%%%%%%%%%
% 交叉引用
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[nameinlink]{cleveref}

\crefdefaultlabelformat{#2#1#3\,}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{equation}{式}{式}
\crefname{footnote}{脚注}{脚注}
\crefname{item}{项}{项}
\crefname{figure}{图}{图}
\crefname{table}{表}{表}
\crefname{part}{篇}{篇}
\crefname{appendix}{附录}{附录}
\crefname{chapter}{章}{章}
\crefname{section}{节}{节}
\crefname{paragraph}{段落}{段落}
\crefname{subparagraph}{子段落}{子段落}
\crefname{page}{页}{页}

\crefformat{chapter}{#2第\zhnumber{#1}章#3}
\crefformat{section}{#2第#1节#3}
\crefformat{subsection}{#2第#1节#3}
\crefformat{subsubsection}{#2第#1节#3}
\crefrangeformat{chapter}{#3第\zhnumber{#1}章#4至#5第#2章#6}
\crefrangeformat{section}{#3第#1节#4至#5第#2节#6}
\crefrangeformat{subsection}{#3第#1节#4至#5第#2节#6}
\crefrangeformat{subsubsection}{#3第#1节#4至#5第#2节#6}
\crefmultiformat{chapter}{#2第\zhnumber{#1}章#3}{和#2第\zhnumber{#1}章#3}{，#2第\zhnumber{#1}章#3}{和#2第\zhnumber{#1}章#3}
\crefmultiformat{section}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}
\crefmultiformat{subsection}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}
\crefmultiformat{subsubsection}{#2第#1节#3}{和#2第#1节#3}{，#2第#1节#3}{和#2第#1节#3}
\newcommand{\crefpairconjunction}{~和~}
\newcommand{\crefmiddleconjunction}{, }
\newcommand{\creflastconjunction}{~和~}
\newcommand{\crefpairgroupconjunction}{~和~}
\newcommand{\crefmiddlegroupconjunction}{, }
\newcommand{\creflastgroupconjunction}{~和~}
\newcommand{\crefrangeconjunction}{~至~}

\crefname{algorithm}{算法}{算法}
\crefname{AlgoLine}{行}{行}
\crefname{line}{行}{行}
\crefname{FancyVerbLine}{行}{行}
\crefname{listing}{代码}{代码}

\crefformat{AlgoLine}{#2第#1行#3}
\crefformat{line}{#2第#1行#3}
\crefformat{FancyVerbLine}{#2第#1行#3}

\crefname{theorem}{定理}{定理}
\crefname{lemma}{引理}{引理}
\crefname{proposition}{命题}{命题}
\crefname{corollary}{推论}{推论}
\crefname{problem}{问题}{问题}
\crefname{exercise}{习题}{习题}
\crefname{definition}{定义}{定义}
\crefname{remark}{评论}{评论}
\crefname{note}{注记}{注记}
