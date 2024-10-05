\LoadClassWithOptions{report}
\ProvidesClass{thesis}

\usepackage[utf8]{vietnam}

% Special sets
\newcommand{\C}{\mathbb{C}}
\newcommand{\CP}{\mathbb{CP}}
\newcommand{\GG}{\mathbb{G}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\RP}{\mathbb{RP}}
\newcommand{\T}{\mathbb{T}}
\newcommand{\Z}{\mathbb{Z}}
\renewcommand{\H}{\mathbb{H}}

\usepackage[top=3.5cm, bottom=3.0cm, left=3.5cm, right=2.0cm]{geometry} % căn lề theo quy chuẩn KLTN
\usepackage{indentfirst}
\parskip 2pt
\headsep=12pt
\linespread{1.45}

\usepackage{amsmath, amsfonts, mathtools, amsthm, amssymb}
\usepackage{latexsym,amscd,enumerate, stmaryrd}
\usepackage{mathrsfs}
\usepackage{cancel}
\usepackage{bm}
\usepackage{enumitem}

%\usepackage{cite}
\usepackage{listings}
\usepackage{soul}
\usepackage[normalem]{ulem}
\useunder{\uline}{\ul}{}
\usepackage{adjustbox}
\usepackage[final]{pdfpages}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{multirow}
\usepackage{floatrow}
\newfloatcommand{capbtabbox}{table}[][\FBwidth]
\usepackage{subcaption}

\usepackage{graphicx}
\usepackage[hidelinks, colorlinks=true, allcolors=blue]{hyperref}
\usepackage{tikz}

\usetikzlibrary{fit,shapes.geometric, positioning, arrows, decorations.pathreplacing, calc, arrows.meta}
\def\checkmark{\tikz\fill[scale=0.4](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;} 

\usetikzlibrary{calc}

\usepackage[usenames,dvipsnames]{xcolor}

\usepackage{titlesec}
\titleformat{\chapter}[display]{\bfseries \large \center}{CHƯƠNG \thechapter}{0.3em}{}[]
\titleformat{\section}{\bfseries}{ \thesection.}{0.3em}{}[]
\titleformat{\subsection}{\it \bfseries }{ \thesubsection.}{0.3em}{}[]
\titleformat{\subsubsection}{ \it }{ \thesubsubsection.}{0.3em}{}[]
\titlespacing{\chapter}{1em}{0.1em}{3em}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{tabularx}
\usepackage{booktabs,array,multirow}
\usepackage{longtable}
\usepackage{makecell}
\usepackage[fontsize=13pt]{scrextend}
%\changefontsizes[26pt]{13pt}
%\renewcommand{\baselinestretch}{4}  %giãn dòng
\usepackage{setspace}
%\onehalfspacing

\usepackage{etoolbox}

\usepackage[abspage,user,lastpage]{zref}

\newcommand\numRoman{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{1}
}
%Đánh số bình thường
\newcommand\pageNumber{
	\newpage
	\pagenumbering{arabic}
	\setcounter{page}{1}
}

\newcommand\contents{
	\renewcommand*\contentsname{MỤC LỤC}
	\newpage
	\phantomsection
	\linespread{1.25}
	% \addcontentsline{toc}{chapter}{{\bf MỤC LỤC\rm }}
	\tableofcontents%
	\linespread{1.45}
}
\newcommand\listImages{
	\renewcommand*{\listfigurename}{\bfseries DANH MỤC CÁC HÌNH VẼ, ĐỒ THỊ}
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{{\bf DANH MỤC CÁC HÌNH VẼ, ĐỒ THỊ\rm }}

	{% Thêm chữ hình vẽ
		\let\oldnumberline\numberline%
		\renewcommand{\numberline}{Hình~\oldnumberline}%
		\listoffigures%
	}
}

\newcommand\listTables{
	\renewcommand*{\listtablename}{\bfseries DANH MỤC CÁC BẢNG}

	{
		\let\oldnumberline\numberline%
		\renewcommand{\numberline}{Bảng~\oldnumberline}%
		\newpage
		\phantomsection
		\addcontentsline{toc}{chapter}{{\bf DANH MỤC CÁC BẢNG \rm}}
		\listoftables%

	}
}

%Định dạng tiêu đề bảng
\usepackage[format=plain,
labelfont={bf,it},
textfont=it]{caption}

\makeatother
\usepackage{thmtools}
\usepackage[framemethod=TikZ]{mdframed}
\mdfsetup{skipabove=1em,skipbelow=0em}

\declaretheoremstyle[
    headfont=\bfseries\color{ForestGreen!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=ForestGreen, backgroundcolor=ForestGreen!5,
    }
]{thmgreenbox}

\declaretheoremstyle[
    headfont=\bfseries\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue, backgroundcolor=NavyBlue!5,
    }
]{thmbluebox}

\declaretheoremstyle[
    headfont=\bfseries\color{NavyBlue!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue
    }
]{thmblueline}

\declaretheoremstyle[
    headfont=\bfseries\color{RawSienna!70!black}, bodyfont=\normalfont,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!5,
    }
]{thmredbox}

\declaretheoremstyle[
    headfont=\bfseries\color{RawSienna!70!black}, bodyfont=\normalfont,
    numbered=no,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=RawSienna, backgroundcolor=RawSienna!1,
    },
    qed=\qedsymbol
]{thmproofbox}

\declaretheoremstyle[
    headfont=\bfseries\color{NavyBlue!70!black}, bodyfont=\normalfont,
    numbered=no,
    mdframed={
        linewidth=2pt,
        rightline=false, topline=false, bottomline=false,
        linecolor=NavyBlue, backgroundcolor=NavyBlue!1,
    },
]{thmexplanationbox}

\declaretheorem[style=thmgreenbox, name=Định nghĩa]{definition}
\declaretheorem[style=thmbluebox, name=Ví dụ]{example}
\declaretheorem[style=thmredbox, name=Mệnh đề]{proposition}
\declaretheorem[style=thmredbox, name=Định lý]{theorem}
\declaretheorem[style=thmredbox, name=Bổ đề]{lemma}
\declaretheorem[style=thmredbox, name=Hệ quả]{corollary}
\declaretheorem[style=thmproofbox, name=Chứng minh]{replacementproof}
\renewenvironment{proof}[1][\proofname]{\vspace{-10pt}\begin{replacementproof}}{\end{replacementproof}}

\declaretheorem[style=thmexplanationbox, name=Chứng minh]{tmpexplanation}
\newenvironment{explanation}[1][]{\vspace{-10pt}\begin{tmpexplanation}}{\end{tmpexplanation}}

\declaretheorem[style=thmblueline, name=Nhận xét]{remark}
\declaretheorem[style=thmblueline, name=Lưu ý]{note}
\declaretheorem[style=thmblueline, name=Câu hỏi]{question}

\newtheorem*{uovt}{UOVT}
\newtheorem*{notation}{Ký hiệu}
\newtheorem*{previouslyseen}{Như đã thấy trước đây}
\newtheorem*{problem}{Bài toán}
\newtheorem*{observe}{Quan sát}
\newtheorem*{property}{Tính chất}
\newtheorem*{intuition}{Trực giác}

\makeatletter


\makeatletter
\newenvironment{sqcases}{%
  \matrix@check\sqcases\env@sqcases
}{%
  \endarray\right.%
}
\def\env@sqcases{%
  \let\@ifnextchar\new@ifnextchar
  \left\lbrack
  \def\arraystretch{1.2}%
  \array{@{}l@{\quad}l@{}}%
}
\makeatother

\newcommand\refs{
	\chapter*{TÀI LIỆU THAM KHẢO}%
	\addcontentsline{toc}{chapter}{{\bf TÀI LIỆU THAM KHẢO}}
	\phantomsection
	\titleformat{\chapter}{\bfseries  \large}{CHƯƠNG \thechapter.}{}{}[]
	\titlespacing{\chapter}{0.1em}{0.1em}{1.1em}
	\printbibliography[keyword={Vietnam},heading=subbibliography,title={Tiếng Việt:}]
	\printbibliography[notkeyword={Vietnam},heading=subbibliography,title={Tiếng Anh:}]
}

\usepackage{epigraph}

\setlength\epigraphwidth{.6\textwidth}
\setlength\epigraphrule{0pt}

\newcommand\tab[1][1cm]{\hspace*{#1}}
\usepackage{svg}

\usepackage[linesnumbered,ruled,vlined]{algorithm2e}
%%% Coloring the comment as blue
\newcommand\mycommfont[1]{\footnotesize\ttfamily\textcolor{blue}{#1}}
\SetCommentSty{mycommfont}

\SetKwInput{KwInput}{Input}                % Set the Input
\SetKwInput{KwOutput}{Output}              % set the Output

\usepackage{tcolorbox}
\tcbuselibrary{minted,breakable,xparse,skins}

\definecolor{bg}{gray}{0.95}
\DeclareTCBListing{mintedbox}{O{}m!O{}}{%
  breakable=true,
  listing engine=minted,
  listing only,
  minted language=#2,
  minted style=default,
  minted options={%
    linenos,
    gobble=0,
    breaklines=true,
    breakafter=,,
    fontsize=\small,
    numbersep=8pt,
    #1},
  boxsep=0pt,
  left skip=0pt,
  right skip=0pt,
  left=25pt,
  right=0pt,
  top=3pt,
  bottom=3pt,
  arc=5pt,
  leftrule=0pt,
  rightrule=0pt,
  bottomrule=2pt,
  toprule=2pt,
  colback=bg,
  colframe=orange!70,
  enhanced,
  overlay={%
    \begin{tcbclipinterior}
    \fill[orange!20!white] (frame.south west) rectangle ([xshift=20pt]frame.north west);
    \end{tcbclipinterior}},
  #3}
