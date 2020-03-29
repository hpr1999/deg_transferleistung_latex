% ursprüngliche Vorlage: Copyright 2015 Jan Hauke Maase

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TLNakLatex}[3/5/2015 custom nak class by Jan Hauke Maase edited by Hans Risser for the data experts gmbh]

\LoadClass[12pt,a4paper,titlepage]{article}

% Pakete
\RequirePackage[ngerman]{babel} % deutsches Sprachpaket
\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern} % Gerenderte Schrift
\RequirePackage{graphicx} % Graphiken, z.B. Tabellen o.ä.
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{eurosym} % Euro Symbol
\RequirePackage[parfill]{parskip} % Keine Einrückung bei neuen Absaetzen
\RequirePackage{array} % Tabellen
\RequirePackage{multirow} % Tabellen mit multirow Zellen
\RequirePackage{listings} % Codelistings
\RequirePackage[all]{nowidow} % Keine Waisen (einsame Zeile eines Absatzes auf der nächsten Seite)
\RequirePackage[hidelinks]{hyperref} % für hyperlinks als ref
\RequirePackage[all]{hypcap} % für hyperlinks als ref
\RequirePackage{acronym} % Abkürzungen
% Seitenränder
\RequirePackage[left=4cm,right=2cm,top=2cm,bottom=2cm,includeheadfoot,headheight=50pt]{geometry}

% Seitenumbrüche per Section
\RequirePackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}

% Zielenabstand 1,5
\RequirePackage{setspace}
\onehalfspacing

% Kopf- und Fußzeile
\RequirePackage[bottom]{footmisc}
\RequirePackage{fancyhdr}
\pagestyle{fancy} % eigener Seitenstil
\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
\fancyhead[L]{\includegraphics[height=30pt]{image/Nordakademie_Logo_klein.jpg}} % Kopfzeile links
\fancyhead[R]{\includegraphics[height=30pt]{image/transferleistung.jpg}} % Kopfzeile rechts
\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie
\fancyfoot[C]{\hyperlink{toc}{\thepage}} %Seitennummer

% Kapitel 4. Ebene
\newcommand{\subsubsubsection}[1]{\paragraph{#1}\mbox{}\\}

% Zitationsstil
\DeclareQuoteStyle{german}
        {\itshape\textquotedblleft}
        [\textquotedblleft]
        {\textquotedblright}
        [0.05em]
        {\textquoteleft}
        {\textquoteright}

% Listingstil
\lstdefinestyle{java}{...} 
% Variablendefinitionen

\newcommand*{\matrikelnr}[1]{\gdef\@matrikelnr{#1}}
\newcommand*{\tlnr}[1]{\gdef\@tlnr{#1}}
\newcommand*{\zenturie}[1]{\gdef\@zenturie{#1}}
\newcommand*{\untertitel}[1]{\gdef\@untertitel{#1}}
\newcommand*{\unteruntertitel}[1]{\gdef\@unteruntertitel{#1}}

% Title

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
	
% Ueberschriften ohne Zahl, aber in der TOC
\newcommand{\sectionX}[1]{
	\newpage
	\addcontentsline{toc}{section}{#1}
	\section*{#1}}
\newcommand{\subsectionX}[1]{
	\addcontentsline{toc}{subsection}{#1}
	\subsection*{#1}}

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

% QOL für Verzeichnisse
\newcommand{\listingverzeichnis}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{Listingverzeichnis}
	\lstlistoflistings
}

\newcommand{\inhaltsverzeichnis}{
	\newpage
	\hypertarget{toc}
	\phantomsection
	\addcontentsline{toc}{section}{Inhaltsverzeichnis}
	\tableofcontents
}

\newcommand{\abbildungsverzeichnis}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{Abbildungsverzeichnis}
	\listoffigures
}

\newcommand{\tabellenverzeichnis}{
	\newpage
	\phantomsection
	\addcontentsline{toc}{section}{Tabellenverzeichnis}
	\listoftables
}

\newcommand{\quellenverzeichnis}{
	\newpage	
	\phantomsection
	\addcontentsline{toc}{section}{Literatur}
	\printbibliography
}

\newcommand{\abkuerzungsverzeichnis}{
	\newpage
	\phantomsection
	\sectionX{Abkürzungsverzeichnis}
	\input{content/acronyms.tex}
}
% Umgebungen
\newenvironment{mainmatter}{\arabicnumbering}{\newpage}
\newenvironment{frontmatter}{\romannumbering}{\newpage}
\newenvironment{backmatter}{\romannumberingtwo}{}
\newenvironment{anhang}{\begin{appendix}
		\renewcommand{\thesection}{\Roman{section}}
	}{\end{appendix}}