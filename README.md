# Deg-NAK-LaTex

Das hier ist meine private LaTex-Vorlage, die ich auf der Grundlage einer inoffiziellen Vorlage eines Studenten an der NAK nach meinen Bedürfnissen angepasst habe.

Ich habe sie erfolgreich zum Verfassen von Transferleistungen genutzt.

## Kompatibilität

Getestet habe ich diese Vorlage

- unter Linux mit TexLive (``sudo apt-get install texlive texlive-lang-german texlive-latex-extra``)
- mithilfe von <https://overleaf.com> (Empfehlung für Anfänger oder Gruppen)
- unter Windows mit MikTeX

## Build

Zum Bauen der PDF habe ich folgende Befehlskette genutzt:

- pdflatex
- bibtex
- pdflatex
- pdflatex

## DEG-Kommandos

Die Vorlage enthält ein paar wenige deg-Kommandos, die nicht viel mehr tun, als einen einheitlichen Stil für Eigennamen zu vereinfachen.

Diese sind in der ``DegTLNakLatex.cls`` zu finden und können dort dementsprechend bearbeitet werden.

- Eigennamen:

| Kommando            | Beschreibung                             | Standardoutput                                                                                                 |
| ------------------- | ---------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| DEG                 | Der formatierte Firmenname               | **data experts**                                                                                               |
| eigenname{Beispiel} | Stellt Eigennamen dar. (kursiv)          | *Beispiel*                                                                                                     |
| profil              | "profil" als Eigenname                   | *profil*                                                                                                       |
| pcs                 | "profil c/s" als Eigenname               | *profil c/s*                                                                                                   |
| rdv                 | "rdv" als Eigenname                      | *rdv*                                                                                                          |
| aiv                 | "aiv" als Eigenname                      | *aiv*                                                                                                          |
| profident           | "profident" als Eigenname                | *profident*                                                                                                    |
| profiltext          | Abkürzungserklärung von profil           | <i>**Pro**grammsystem zur rechnergestützten Verwaltung von **F**ördermitteln **I**n der **L**andwirtschaft</i> |
| eigeneDarstellung   | Formatierter Text für eigene Abbildungen | *Eigene Darstellung*                                                                                           |
| eigeneAuflistung    | Formatierter Text für eigene Tabellen    | *Eigene Auflistung*                                                                                            |
