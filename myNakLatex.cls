% ursprüngliche Vorlage: Copyright 2015 Jan Hauke Maase

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myNakLatex}[3/5/2015 custom nak class by Jan Hauke Maase edited by Hans Risser]

\LoadClass[12pt,a4paper,titlepage]{article}

% Pakete
\RequirePackage[ngerman]{babel} % deutsches Sprachpaket
\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern} % Gerenderte Schrift
\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{eurosym} % Euro Symbol
\RequirePackage[parfill]{parskip} % Keine Einrückung bei neuen Absaetzen
\RequirePackage[hidelinks]{hyperref} % für hyperlinks als ref
\RequirePackage[all]{hypcap} % für hyperlinks als ref
\RequirePackage{array} % Tabellen
\RequirePackage{multirow} % Tabellen mit multirow Zellen
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
\pagestyle{fancy} %eigener Seitenstil
\fancyhf{} %alle Kopf- und Fußzeilenfelder bereinigen
\fancyhead[L]{\@author} %Kopfzeile links
\fancyhead[R]{\includegraphics[height=20pt]{image/Nordakademie_Logo_klein}}
\renewcommand{\headrulewidth}{0.4pt} %obere Trennlinie
\fancyfoot[C]{\thepage} %Seitennummer

% Kapitel 4. Ebene
\newcommand{\subsubsubsection}[1]{\paragraph{#1}\mbox{}\\}

\DeclareQuoteStyle{german}
        {\itshape\textquotedblleft}
        [\textquotedblleft]
        {\textquotedblright}
        [0.05em]
        {\textquoteleft}
        {\textquoteright}

% Options
\DeclareOption{titel1}{
	\renewcommand{\maketitle}{
		\thispagestyle{empty}
		\begin{titlepage}
			\center 			
			\includegraphics[width=\textwidth]{image/Nordakademie_Logo_gross}\\[2cm]
			{ \huge \bfseries \@title}\\[1.4cm]		
			\textsc{\Large \@untertitel}\\[0.5cm]
			\textsc{\Large \@unteruntertitel}\\[0.9cm]
			
			\begin{minipage}{0.4\textwidth}
				\begin{flushleft} \large
					\emph{Autor}\\
					\@author\\\@authoraddress
				\end{flushleft}
			\end{minipage}
			~
			\begin{minipage}{0.4\textwidth}
				\begin{flushright} \large
					\emph{Gutachter} \\
					\@gutachter\\\@gutachteraddress
				\end{flushright}
			\end{minipage}\\[4cm]

			{\large \today}\\[3cm]		
		\end{titlepage}}
	}
\DeclareOption{titel2}{
	\renewcommand{\maketitle}{
		\thispagestyle{empty}
		\begin{titlepage}
			\begin{center}
				\includegraphics[width=\textwidth]{image/Nordakademie_Logo_gross}\\[2cm]
	
				{ \huge \bfseries \@title}\\[1.4cm]
				
				\textsc{\Large \@untertitel}\\[0.5cm]
				\textsc{\Large \@unteruntertitel}\\[0.9cm]
			
				\vspace{\fill}
			
				\begin{tabular}{lll}
					\textbf{eingereicht von:} & & \@author\\
					& & \\
					& & \\
					\textbf{eingereicht am:} & & \today\\
					& & \\
					& & \\
					\textbf{Betreuer:} & & \@gutachter
				\end{tabular}
			\end{center}
		\end{titlepage}}
	}
\ProcessOptions\relax

	
% Ueberschriften ohne Zahl, aber in der TOC
\newcommand{\sectionX}[1]{
	\newpage
	\addcontentsline{toc}{section}{#1}
	\section*{#1}}
\newcommand{\subsectionX}[1]{
	\addcontentsline{toc}{subsection}{#1}
	\subsection*{#1}}

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

\newcommand{\inhaltsverzeichnis}{
	\newpage
	\addcontentsline{toc}{section}{Inhaltsverzeichnis}
	\tableofcontents}

\newcommand{\abbildungsverzeichnis}{
	\newpage
	\addcontentsline{toc}{section}{Abbildungsverzeichnis}
	\listoffigures}

\newcommand{\tabellenverzeichnis}{
	\newpage
	\addcontentsline{toc}{section}{Tabellenverzeichnis}
	\listoftables}

\newcommand{\eigenleistung}[1]{% Versicherung über Eigenleistung
	\newpage
	\addcontentsline{toc}{section}{Versicherung über Eigenleistung}
	\section*{Versicherung über Eigenleistung}
	Hiermit erkläre ich, dass ich die vorliegende Hausarbeit selbständig verfasst und keine anderen als die angegebenen Hilfsmittel benutzt habe.
	\\[2em]
	Die Stellen der Hausarbeit, die anderen Quellen im Wortlaut oder dem Sinn nach entnommen wurden, sind durch Angaben der Herkunft kenntlich gemacht. Dies gilt auch für Zeichnungen, Skizzen, bildliche Darstellungen sowie für Quellen aus dem Internet.
	\\[2em]
	#1, den \today
	\\[8em]
	\@author}

\newcommand{\quellenverzeichnis}{
	% Quellenverzeichnis
	\addcontentsline{toc}{section}{Literatur}
	\printbibliography
	}

\newenvironment{mainmatter}{\arabicnumbering}{\newpage}
\newenvironment{frontmatter}{\romannumbering}{\newpage}
\newenvironment{backmatter}{\romannumberingtwo}{}
\newenvironment{anhang}{\begin{appendix}
		\renewcommand{\thesection}{\Roman{section}}
	}{\end{appendix}}

\newcommand*{\gutachter}[1]{\gdef\@gutachter{#1}}
\newcommand*{\untertitel}[1]{\gdef\@untertitel{#1}}
\newcommand*{\unteruntertitel}[1]{\gdef\@unteruntertitel{#1}}
\newcommand*{\authoraddress}[1]{\gdef\@authoraddress{#1}}
\newcommand*{\gutachteraddress}[1]{\gdef\@gutachteraddress{#1}}

\newcommand{\eigenname}[1]{\textit{#1}}
\newcommand{\DEG}{\textbf{data experts}}
\newcommand{\profil}{\eigenname{profil}}
\newcommand{\pcs}{\eigenname{profil c/s}}
\newcommand{\rdv}{\eigenname{rdv}}
\newcommand{\aiv}{\eigenname{aiv}}
\newcommand{\profident}{\eigenname{profident}}
\newcommand{\profiltext}{\eigenname{\textbf{Pro}grammsystem zur rechnergestützten Verwaltung von \textbf{F}ördermitteln \textbf{I}n der \textbf{L}andwirtschaft}}
\newcommand{\eigeneDarstellung}{\textit{(Eigene Darstellung)}}
\newcommand{\eigeneAuflistung}{\textit{(Eigene Auflistung)}}
