% ursprüngliche Vorlage: Copyright 2015 Jan Hauke Maase

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TLNakLatex}[3/5/2015 custom nak class by Jan Hauke Maase edited by Hans Risser for the data experts gmbh]

\LoadClass[12pt,a4paper,titlepage]{article}

\RequirePackage[ngerman]{babel} % deutsches Sprachpaket

%%%%%%%%%%%%%%%%%% FONT %%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage[T1]{fontenc}
\RequirePackage{textalpha} % Griechische Schriftzeichen
\RequirePackage{lmodern} % Gerenderte Schrift
\RequirePackage{microtype}
\RequirePackage{eurosym} % Euro Symbol
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% LAYOUTING %%%%%%%%%%%%%%%%%%
% Seitenränder
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm,includeheadfoot,headheight=50pt]{geometry}

% Zeilenabstand 1,25
\RequirePackage{setspace}
	\AtBeginDocument{\setstretch{1.125}}

%% Kopf- und Fußzeile
\RequirePackage[bottom,hang]{footmisc}
\RequirePackage{fancyhdr}
	\pagestyle{fancy} % eigener Seitenstil
	\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
	\fancyhead[L]{\includegraphics[height=30pt]{image/Nordakademie_Logo_klein.jpg}} % Kopfzeile links
	\fancyhead[R]{\includegraphics[height=30pt]{image/transferleistung.jpg}} % Kopfzeile rechts
	\renewcommand{\headrulewidth}{0.4pt} % obere Trennlinie
	\fancyfoot[C]{\hyperlink{toc}{\thepage}} % Seitennummer
\RequirePackage[parfill]{parskip} % Keine Einrückung bei neuen Absaetzen
	\setlength{\parskip}{\medskipamount} % Einrückungen in minipages bleiben gleich
	\newcommand{\@minipagerestore}{\setlength{\parskip}{\medskipamount}}
\RequirePackage[all]{nowidow} % Keine Waisen (einsame Zeile eines Absatzes auf der nächsten Seite)
\RequirePackage{titlesec} 
	\newcommand{\sectionbreak}{}  % Hier können z.B. mit \clearpage Seitenumbrüche per Section eingestellt werden
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% TABLES %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{array} % m und b tabellenausrichtungen
\RequirePackage{longtable} % Tabellen über mehrere Spalten
\RequirePackage{booktabs} % Bessere Tabellen
\RequirePackage{multirow} % Tabellen mit multirow Zellen
\renewcommand{\arraystretch}{1.5} % Tabellen: Zeilenabstand
\setlength{\tabcolsep}{12pt} % Tabellen: Spaltenabstand
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% UML & ERD %%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\RequirePackage{pgf-umlcd}
\usetikzlibrary[er,positioning]
%% underline primary key
\newbox\underlinebox
\tikzset{
    key attribute/.append style={
        font=\rmfamily,
        execute at begin node={
            \setbox\underlinebox=\hbox\bgroup
        },
        execute at end node={
             \egroup\underline{\box\underlinebox}
        }
    }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% FIGURES %%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx} % Graphiken, z.B. Tabellen o.ä.
\RequirePackage{float}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%% ABBREVIATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[printonlyused]{acronym}
	\renewcommand{\acsfont}[1]{\textbf{#1}}
	\renewcommand{\acffont}[1]{\textit{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% CITING %%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{footnotehyper} % Make footnotes work properly with hyperlinks
%Literatur Einstellungen
\RequirePackage[backend=biber, style=ieee]{biblatex}
	\ExecuteBibliographyOptions{sorting=nty}
	\setcounter{biburllcpenalty}{7000} % linebreak in links
% Zitationen und Zitationsstil

\RequirePackage[babel, german=quotes]{csquotes}
	\DeclareQuoteStyle{german}
			{\itshape\textquotedblleft}
			[\textquotedblleft]
			{\textquotedblright}
			[0.05em]
			{\textquoteleft}
			{\textquoteright}

\RequirePackage[center]{caption} % Zentrierte Captions
% für hyperlinks als ref
\RequirePackage[hidelinks]{hyperref} % für hyperlinks als ref
\RequirePackage[all]{hypcap} 
\newcommand{\linkdest}[2]{\makeatletter\Hy@raisedlink{\hypertarget{#1}{}}#2\makeatother} % makes link correctly point to the top of the line, not the baseline
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TITLE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{pdfpages} % PDF imporiteren (z.B. Titelblatt)
% Variablendefinitionen
\newcommand*{\matrikelnr}[1]{\gdef\@matrikelnr{#1}}
\newcommand*{\tlnr}[1]{\gdef\@tlnr{#1}}
\newcommand*{\zenturie}[1]{\gdef\@zenturie{#1}}
\newcommand*{\untertitel}[1]{\gdef\@untertitel{#1}}
\newcommand*{\unteruntertitel}[1]{\gdef\@unteruntertitel{#1}}
% title page
\renewcommand{\maketitle}{
		\thispagestyle{fancy}
		\begin{titlepage}
			\begin{center}
				\includegraphics[width=\textwidth]{image/Nordakademie_Logo_gross}\\[2cm]
	
				{ \huge \bfseries \@title}\\[1.4cm]
				
				\textsc{\Large \@untertitel}\\[0.5cm]
				\textsc{\Large \@unteruntertitel}\\[0.9cm]
			
				\vspace{\fill}
			
				\begin{tabular}{lll}
					\textbf{Transferleistung Theorie / Praxis Nr. } & & \@tlnr \\
					& & \\
					& & \\
					\textbf{Matrikelnummer:} & & \@matrikelnr\\
					& & \\
					& & \\
					\textbf{Studiengang, Zenturie:} & & \@zenturie
				\end{tabular}
			\end{center}
		\end{titlepage}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% STRUCTURE %%%%%%%%%%%%%%%%%%
% Seitennummerierung
\newcommand{\romannumbering}{
	\pagenumbering{Roman}
	\setcounter{page}{1}}

\newcommand{\arabicnumbering}{
	\newcounter{frontmatter}
	\setcounter{frontmatter}{\value{page}}
	\pagenumbering{arabic}
	\setcounter{page}{1}}

\newcommand{\romannumberingtwo}{
	\pagenumbering{Roman}
	\setcounter{page}{\value{frontmatter}}}

% Umgebungen
\newenvironment{mainmatter}{\arabicnumbering}{\newpage}
\newenvironment{frontmatter}{\romannumbering}{\newpage}
\newenvironment{backmatter}{\romannumberingtwo}{}
\newenvironment{anhang}{\begin{appendix}
		\renewcommand{\thesection}{\Roman{section}}
	}{\end{appendix}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% LISTS %%%%%%%%%%%%%%%%%%%%
\newcommand{\inhaltsverzeichnis}{
	\newpage
	\hypertarget{toc}
	\phantomsection
	\tableofcontents
}

\newcommand{\abbildungsverzeichnis}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Abbildungsverzeichnis}}
	\listoffigures
}

\newcommand{\tabellenverzeichnis}{
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Tabellenverzeichnis}}
	\listoftables
}

\newcommand{\abkuerzungsverzeichnis}{
	\phantomsection
	\section*{Abkürzungsverzeichnis}
	\addcontentsline{toc}{section}{\footnotesize{Abkürzungsverzeichnis}}
	\begin{center}
		\input{content/acronyms.tex}
	\end{center}
}

\newcommand{\listingverzeichnis}{
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Quellcodeverzeichnis}}
	\listoflistings
}

\newcommand{\quellenverzeichnis}{
	\newpage	
	\phantomsection
	\addcontentsline{toc}{section}{\footnotesize{Literatur}}
	\printbibliography
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% CODE %%%%%%%%%%%%%%%%%%
%% Fancy Codelistings %%
\RequirePackage{listings}
\RequirePackage{minted}
%%

%% Einfache Codelistings %%
\RequirePackage{listings} 
\lstdefinestyle{java}{...}
\lstset{
	language    = java,
	frame       = single,
	keepspaces  = true,
	basicstyle  = \small\ttfamily,
	columns     = fullflexible,
	breaklines  = trueca
	}
%%

\renewcommand{\listoflistingscaption}{Quellcodeverzeichnis}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%% QOL %%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}% Custom Enumerate (z.B. Start mit 0)
\newcommand{\tabitem}{~~\llap{\textbullet}~~} % A bulletpoint outside of itemize

\newcommand{\labeledDescription}[2]{
\begin{description}
\item[#1]\hfill\\#2 
\end{description}}

\newcommand{\email}[1]{\href{mailto:#1}{\texttt{#1}}} % Email-Kommando
\newcommand{\ident}[1]{\textsc{#1}}

\newcommand{\srcSelf}{\textit{(Eigene Darstellung)}}
\newcommand{\srcSelfCaption}[1]{\caption[#1]{#1 \srcSelf{}}}
\newcommand{\srcSelfTable}{\textit{(Eigene Auflistung)}}
\newcommand{\srcSelfTableCaption}[1]{\caption[#1]{#1 \srcSelfTable{}}}
\newcommand{\code}[1]{\texttt{#1}} %% Inline Code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
