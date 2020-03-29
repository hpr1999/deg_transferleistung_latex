
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DegTLNakLatex}[3/5/2015 custom nak class by Jan Hauke Maase edited by Hans Risser for the data experts gmbh]

\LoadClass{TLNakLatex}

\fancyhead[L]{\includegraphics[height=30pt]{image/data-experts-logo.png}} % Kopfzeile links
        
% DEG-Textcommands
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
