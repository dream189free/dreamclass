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
%% # Author: dream189free <dream189free@outlook.com>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dreamClass}

%%%%%%%%%%%%%%%%%%%%%%
% CTeX宏集
%%%%%%%%%%%%%%%%%%%%%%
% sub3section(paragraph的格式改变为section的样子), sub4section(subparagraph的也一起变), NULL
% linespread = <float>(行距，默认1.3倍)
% zihao =-4(小四号), 5(五号), false(使用文档类原有设置)
% fontset = sourcesans(思源), founder(方正)，adobe(奥多比)，windowsnew(中易字体和微软雅黑)等
\LoadClass[UTF8, fontset = sourcesans, zihao = -4, sub3section]{ctexart}
% 计数一直到paragraph
\setcounter{secnumdepth}{4}
\ctexset{
  % 标点处理格式
  % kaiming(开明式)，别的...算了吧
  punct = kaiming,
  % 章节标题格式
  % 让section居中，其他的左对齐
  section/format = \Large\bfseries\sffamily\centering,
  subsection/format = \large\bfseries\sffamily\raggedright,
  subsubsection/format = \normalsize\bfseries\sffamily\raggedright,
  paragraph/format = \normalsize\bfseries\sffamily\raggedright,
  subparagraph/format = \normalsize\bfseries\sffamily\raggedright
}
% TODO: 对hyperref做设置
\RequirePackage{hyperref}

%%%%%%%%%%%%%%%%%%%%%%
% 页面大小
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[paper=a4paper]{geometry}
\geometry{
  % 随手调的。
  headheight=2.6cm,
  headsep=3mm,
  footskip=3mm,
  top=3.5cm,
  bottom=2.4cm,
  left=2.8cm,
  right=2.8cm
}

%%%%%%%%%%%%%%%%%%%%%%
% 英文字体
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
\let\hbar\relax
% 随手换了一个字体
\RequirePackage{concmath}
\RequirePackage[T1]{fontenc}

%%%%%%%%%%%%%%%%%%%%%%
% 代码
%%%%%%%%%%%%%%%%%%%%%%
% 从progartcn抄来的
\RequirePackage{listings, verbatim}
\RequirePackage{xcolor}
\definecolor{codecolorkeywords}{rgb}{0,0,1}
\definecolor{codecolorcomments}{rgb}{0,0.5,0}
\definecolor{codecolorxmlcomments}{rgb}{0.5,0.5,0.5}
\definecolor{codecolorstrings}{rgb}{0.64,0.08,0.08}
\definecolor{codecolortypes}{rgb}{0.17,0.57,0.68}
\lstset{
  % Basic design
  basicstyle=\linespread{1.2}\ttfamily,
  frame=tb,
  framesep=5pt,
  framerule=.5pt,
  framexleftmargin=10pt,
  rulecolor=\color{black},
  abovecaptionskip=0pt,
  belowcaptionskip=5pt,
  aboveskip=5pt,
  backgroundcolor=\color{black!5!white},
  % Code design
  keywordstyle=\color{codecolorkeywords},
  commentstyle=\color{codecolorcomments},
  stringstyle=\color{codecolorstrings},
  numberstyle=\small\color{gray},
  breakatwhitespace=false,
  breaklines=true,
  captionpos=t,
  keepspaces=true,
  % Line numbers
  numbers=none,
  numbersep=15pt,
  xleftmargin=10pt,
  stepnumber=1,
  firstnumber=1,
  numberfirstline=true,
  % Code
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true
}

%%%%%%%%%%%%%%%%%%%%%%
% 定理
%%%%%%%%%%%%%%%%%%%%%%
% 不清楚要不要加，CTeX似乎已经做了这些工作
% \RequirePackage{float}
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
% caption
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{caption}
\renewcommand{\lstlistingname}{代码}
% 从jyy老师的山寨nju-thesis里抄来的
\DeclareCaptionFormat{plain}{\heiti{\small \textbf{#1}#2#3}}

%%%%%%%%%%%%%%%%%%%%%%
% 枚举环境间距
%%%%%%%%%%%%%%%%%%%%%%
% 还是从jyy老师的山寨nju-thesis里抄来的
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=3pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsepi=3pt}

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
