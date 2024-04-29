\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myclass}[2024/04/29 My custom class]

\LoadClass[onecolumn, 12 pt, doublespace, fullpage, a4paper]{report}
\renewcommand{\baselinestretch}{1.75} % baseline stretch

% Packages
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[cmex10]{amsmath}
\RequirePackage{adjustbox} 
\RequirePackage{arabtex} 
\RequirePackage{academicons}
\RequirePackage{breakcites} 
\RequirePackage{color}
\RequirePackage{epsfig}
\RequirePackage{epstopdf}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{float}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{graphics}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{latexsym,amsfonts}
\RequirePackage{longtable}
\RequirePackage{listings}
\RequirePackage{lscape} 
\RequirePackage{lipsum}
\RequirePackage{multirow}             
\RequirePackage{pdfpages}
\RequirePackage[figuresright]{rotating} 
\RequirePackage{sectsty}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{textcomp}
\RequirePackage{utf8} 
\RequirePackage{url} 
\RequirePackage{wrapfig} 
\RequirePackage{wasysym} 
\RequirePackage{xcolor}

% you can define your most used synonyms/acronyms
\def\Tanta {Tanta University}

\def\dg{$^\circ$}		 % for degree celcius
\def\2{$^2$}			 % for raised to power 2
\def\3{$^3$}			 % for raised to power 3
\def\-2{$^{-2}$}		 % for raised to power -2
\def\-3{$^{-3}$}		 % for raised to power -2
\def\-1{$^{-1}$}		 % for raised to power -1
\def\h{W.m$^{-2}$K$^{-1}$}
\def\hh{kJ.kg$^{-1}$}
\def\hfg{kJ.kg$^{-1}$}
\def\ss{kJ.kg$^{-1}$K$^{-1}$}
\def\Q{W.m$^{-2}$}
\def\mone {$^{-1}$}
\def\mtwo {$^{-2}$}
\def\um{$\mu m$}
\def\kwhm{kWh.m$ ^{-3} $}
\def\LMH{kg.m$^{-2}$h$^{-1}$}

% Changing chapters' headings and subheadings to size 14
\chapterfont{\fontsize{14}{15}\selectfont}   % font size and baseline stretch
\sectionfont{\fontsize{14}{15}\selectfont}
\subsectionfont{\fontsize{14}{15}\selectfont}
\subsubsectionfont{\fontsize{14}{15}\selectfont}

\pagestyle{fancy} % adds a line at the top of every page, except title-page
\fancyhead{} \fancyfoot{} % for header and footer
\fancyhead[CO,CE]{\thepage}    % center odd and even page number

%centering the page numbers with text body
\fancyheadoffset[L]{0.01mm}
\renewcommand{\headrulewidth}{0pt}

%The following code changes the empty vertical space above a new chapter title. It sets it from 50pt to 20pt
\makeatletter
\patchcmd{\@makechapterhead}{50\p@}{20pt}{}{}
\patchcmd{\@makeschapterhead}{50\p@}{20pt}{}{}
\makeatother

% The following code redefines the plain pagestyle with the objective of moving the page number from the bottom to the top of the page. This only affects new chapter pages.
\fancypagestyle{plain}{
\fancyhf{} %clear all header and footer fields
\fancyhead[C]{\thepage} %puts number on top center of the page
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}

% ### Nomenclature, List of Abbreviations and List of Symbols 
\RequirePackage{ifthen,xkeyval,xfor,amsgen}
\RequirePackage[acronym,toc, nogroupskip]{glossaries}
\newglossary[slg]{symbols}{syi}{sbl}{List of Symbols}

\makeglossaries

% Modified commands
\newcommand{\Tab}{\hspace{2ex}}
\RequirePackage[lmargin=40mm, rmargin=25mm, vmargin=25mm, headsep=2.5mm]{geometry}
\newcommand{\mathsym}[1]{{}}
\newcommand{\unicode}[1]{{}}
\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand\bibname{\centering BIBLIOGRAPHY}
\newcommand{\orcid}{\includegraphics[width=8pt]{0.asset/ORCID}} % ORCID ID
