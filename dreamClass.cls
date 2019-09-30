%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% progartcn - Yet Another LaTeX Template for Programming or Technical Articles or Tutorials
%% cd c../.@gmail.com
%% July, 2018
%% 18.10.17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% # NJU Thesis
%% # Based on the LyX Book class.
%% # Author: Yanyan Jiang <jiangyy@outlook.com>
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
\LoadClass[UTF8, fontset = sourcehan, zihao = 5, 12pt, sub3section]{ctexart}
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
% 超链接
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[colorlinks, linkcolor=red!80!black, anchorcolor=blue!80!black, citecolor=green!80!black]{hyperref}

%%%%%%%%%%%%%%%%%%%%%%
% 页面大小
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[paper=a4paper]{geometry}
\geometry{
  top = 2.54cm,
  bottom = 2.54cm,
  left = 3cm,
  right = 3cm
}

%%%%%%%%%%%%%%%%%%%%%%
% 英文字体
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{concmath}
\RequirePackage[T1]{fontenc}

%%%%%%%%%%%%%%%%%%%%%%
% 代码
%%%%%%%%%%%%%%%%%%%%%%
% copy from https://github.com/Liam0205/easy_slides/blob/master/global_setup/settings.tex#L8-L65
\RequirePackage{listings, verbatim}
\RequirePackage{xcolor}
\lstdefinestyle{lfonts}{
  basicstyle   = \linespread{0.97}\small\ttfamily,
  stringstyle  = \color{purple},
  keywordstyle = \color{blue!60!black}\bfseries,
  commentstyle = \color{green!60!black}\scshape,
}
\lstdefinestyle{lnumbers}{
  numbers     = left,
  numberstyle = \tiny,
  numbersep   = 1em,
  firstnumber = 1,
  stepnumber  = 1,
}
\lstdefinestyle{llayout}{
  breaklines       = true,
  tabsize          = 2,
  columns          = flexible,
}
\lstdefinestyle{lgeometry}{
  xleftmargin      = 20pt,
  xrightmargin     = 0pt,
  frame            = tb,
  framesep         = \fboxsep,
  framexleftmargin = 20pt,
}
\lstdefinestyle{lgeneral}{
  style = lfonts,
  style = lnumbers,
  style = llayout,
  style = lgeometry,
}
\lstdefinestyle{mathescape}{
  mathescape = true,
  escapechar = \%,
}
\lstdefinestyle{cpp}{
  language = {C++},
  style = {lgeneral},
  morekeywords = {constexpr, noexcept, nullptr, override, auto, string}
}
\lstdefinestyle{ltx}{
  language = {[LaTeX]TeX},
  style = {lgeneral},
}
\lstdefinestyle{py}{
  language = {Python},
  style = {lgeneral},
}
\lstdefinestyle{sh}{
  language = {sh},
  style = {lgeneral},
}
\lstdefinestyle{java}{
  language = {Java},
  style = {lgeneral},
}

%%%%%%%%%%%%%%%%%%%%%%
% 定理
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\theoremstyle{plain}
% 从jyy老师的山寨nju-thesis里抄来的
\newtheorem{theorem}{\protect\theoremname}
\newtheorem{lemma}[theorem]{\protect\lemmaname}
\providecommand{\lemmaname}{引理}
\providecommand{\theoremname}{定理}
\newtheorem{problem}{问题}
\newtheorem*{problem*}{问题}
\newtheorem{exercise}{习题}
\newtheorem*{exercise*}{习题}

%%%%%%%%%%%%%%%%%%%%%%
% 算法，algorithm2e
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[ruled, linesnumbered, noend, vlined]{algorithm2e}
\SetAlgorithmName{算法}{algorithmautoref}{算法列表}
\SetKwInput{KwData}{输入}
\SetKwInput{KwResult}{输出}
\SetAlFnt{\ttfamily}
\SetKw{Continue}{\textbf continue}
\SetKw{Break}{\textbf break}
\SetKwRepeat{Do}{do}{while}
\SetKwProg{Def}{函数}{:}{}

%%%%%%%%%%%%%%%%%%%%%%
% caption和浮动体
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[section]{placeins}
\RequirePackage{float}
\RequirePackage{caption}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

\RequirePackage{chngcntr}
\AtBeginDocument{\counterwithin{lstlisting}{section}}
\counterwithin{equation}{section}
\counterwithin{figure}{section}
\counterwithin{table}{section}

% \makeatletter
% \@addtoreset{equation}{section}
% \@addtoreset{figure}{section}
% \@addtoreset{table}{section}
% % \@addtoreset{lstlisting}{section}
% \makeatother

% \renewcommand{\thetable}{\thesection{}-\arabic{table}}
% \renewcommand{\thefigure}{\thesection{}-\arabic{figure}}
% \renewcommand{\theequation}{\thesection{}-\arabic{equation}}

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

% 从jyy老师的山寨nju-thesis里抄来的
\DeclareCaptionFormat{plain}{\heiti{\small \textbf{#1}#2#3}}

%%%%%%%%%%%%%%%%%%%%%%
% 枚举环境间距
%%%%%%%%%%%%%%%%%%%%%%
% 还是从jyy老师的山寨nju-thesis里抄来的
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}

%%%%%%%%%%%%%%%%%%%%%%
% 地址
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{authblk}

%%%%%%%%%%%%%%%%%%%%%%
% 环绕式插图
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\graphicspath{
  {resources/}
  {pic/}
}

%%%%%%%%%%%%%%%%%%%%%%
% 私人化
%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\code}{\texttt}
