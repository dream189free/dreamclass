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
% fontset = sourcehan(思源), founder(方正)，adobe(奥多比)，windowsnew(中易字体和微软雅黑)等
\LoadClass[UTF8, fontset = sourcehan, 11pt, sub3section]{ctexart}
% 计数一直到paragraph
\setcounter{secnumdepth}{4}
\ctexset{
    % 标点处理格式
    % kaiming(开明式)，别的...算了吧
    punct = kaiming,
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
    % MS Word的中等页边距
    % top = 2.54cm,
    % bottom = 2.54cm,
    % left = 1.91cm,
    % right = 1.91cm
}

%%%%%%%%%%%%%%%%%%%%%%
% 英文字体
%%%%%%%%%%%%%%%%%%%%%%

% 参考下述内容设置
% 对于不了解字体的人，在使用LaTeX排版时如何通过fontspec包选择字体？ - Clerk Ma的回答 - 知乎
% https://www.zhihu.com/question/20563044/answer/15494226

% \setmainfont[Scale=1.05]{LinLibertine_DR.otf}[
%     BoldFont = LinLibertine_RZ.otf,
%     ItalicFont = LinLibertine_RI.otf,
%     BoldItalicFont = LinLibertine_RZI.otf,
% ]
% \setsansfont{LinBiolinum_R.otf}[
%     BoldFont = LinBiolinum_RB.otf,
%     ItalicFont = LinBiolinum_RI.otf,
%     BoldItalicFont = LinBiolinum_RBO.otf
% ]
% \setmonofont[Scale=.9]{Sarasa-Mono-Slab-SC-Light}[
%     BoldFont = Sarasa-Mono-Slab-SC-Regular,
%     ItalicFont = Sarasa-Mono-Slab-SC-Light-Italic,
%     BoldItalicFont = Sarasa-Mono-Slab-SC-Italic,
% ]

\setromanfont[Scale=1.04]{LibertinusSerif}[
   UprightFont = *-Regular,
   BoldFont = *-Bold,
   ItalicFont = *-Italic,
   BoldItalicFont = *-BoldItalic,
   Extension = .otf
]
\setsansfont[Scale=1]{LibertinusSans}[
   UprightFont = *-Regular,
   BoldFont = *-Bold,
   ItalicFont = *-Italic,
   Extension = .otf
]
\setmonofont[Scale=.9]{Sarasa-Mono-Slab-SC-Light}[
    BoldFont = Sarasa-Mono-Slab-SC-Regular,
    ItalicFont = Sarasa-Mono-Slab-SC-Light-Italic,
    BoldItalicFont = Sarasa-Mono-Slab-SC-Italic
]

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
\newtheorem{theorem}{\protect\theoremname}
\newtheorem{lemma}[theorem]{\protect\lemmaname}
\providecommand{\lemmaname}{引理}
\providecommand{\theoremname}{定理}
\newtheorem{problem}{问题}
\newtheorem*{problem*}{问题}
\newtheorem{exercise}{习题}
\newtheorem*{exercise*}{习题}

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
% 说明文字、代码（minted）和浮动体
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[section]{placeins}
\RequirePackage{float}
\RequirePackage[compatibility=false]{caption}
\RequirePackage{subcaption}
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

\setminted{autogobble, breaklines, breakanywhere, fontsize=\small, python3, tabsize=4, baselinestretch=1, escapeinside=!!}

\RecustomVerbatimEnvironment{Verbatim}{BVerbatim}{}

% remove colorbox and fcolorbox style from minted
\makeatletter
\AtBeginEnvironment{minted}{\dontdofcolorbox}
\def\dontdofcolorbox{
    \renewcommand\fcolorbox[4][]{##4}
}
\xpatchcmd{\inputminted}{\minted@fvset}{\minted@fvset\dontdofcolorbox}{}{}
\xpatchcmd{\mintinline}{\minted@fvset}{\minted@fvset\dontdofcolorbox}{}{}
\makeatother

\newenvironment{codeblock}{\captionsetup{type=listing}}{}
\SetupFloatingEnvironment{listing}{name=代码}
\SetupFloatingEnvironment{listing}{listname=代码列表}
\providecommand*{\listingautorefname}{代码}

\DeclareCaptionFont{heitibf}{\bf\heiti}
\DeclareCaptionFont{heiti}{\heiti}
\captionsetup{font=small}
\captionsetup[table]{position=top,textfont=heiti,labelfont=heitibf}
\captionsetup[figure]{position=below,textfont=heiti,labelfont=heitibf}
\captionsetup[listing]{position=below,textfont=heiti,labelfont=heitibf}

\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\equationautorefname}{式}
\renewcommand{\footnoteautorefname}{脚注}
\renewcommand{\itemautorefname}{项}
\renewcommand{\figureautorefname}{图}
\renewcommand{\tableautorefname}{表}
\renewcommand{\partautorefname}{篇}
\renewcommand{\appendixautorefname}{附录}
\renewcommand{\chapterautorefname}{章}
\renewcommand{\sectionautorefname}{节}
\renewcommand{\subsectionautorefname}{小节}
\renewcommand{\subsubsectionautorefname}{小小节}
\renewcommand{\paragraphautorefname}{段落}
\renewcommand{\subparagraphautorefname}{子段落}
\renewcommand{\FancyVerbLineautorefname}{行}
\renewcommand{\theoremautorefname}{定理}
\renewcommand{\algorithmautorefname}{算法}

%%%%%%%%%%%%%%%%%%%%%%
% 参考文献
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{gbt7714}


\newcommand{\refc}[1]{第 \ref{#1} 章}
\newcommand{\refs}[1]{第 \ref{#1} 节}
\newcommand{\refl}[1]{第 \ref{#1} 行}

\RequirePackage{tikz}