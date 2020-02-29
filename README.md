# Deg-NAK-LaTex

Das hier ist meine private LaTex-Vorlage, die ich auf der Grundlage einer inoffiziellen Vorlage eines Studenten an der NAK nach meinen Bedürfnissen angepasst habe.

Ich habe sie erfolgreich zum Verfassen von Transferleistungen genutzt.

## Kompatibilität

Getestet habe ich diese Vorlage

- unter Linux mit TexLive.
- mithilfe von <https://overleaf.com> (Empfehlung für Anfänger oder Gruppen)

## Build

Zum Bauen der PDF habe ich folgende Befehlskette genutzt:

- pdflatex
- bibtex
- pdflatex
- pdflatex

## DEG-Kommandos

Die Vorlage enthält ein paar wenige deg-Kommandos, die nicht viel mehr tun, als einen einheitlichen Stil für Eigennamen zu vereinfachen.

Diese sind in der ``myNakLatex.cls`` zu finden und können dort dementsprechend bearbeitet werden.

- Eigennamen:

| Kommando          | Beschreibung                             |
| ----------------- | ---------------------------------------- |
| DEG               | Der formatierte Firmenname               |
| eigenname         | Stellt Eigennamen dar. (kursiv)          |
| profil            | "profil" als Eigenname                   |
| pcs               | "profil c/s" als Eigenname               |
| rdv               | "rdv" als Eigenname                      |
| aiv               | "aiv" als Eigenname                      |
| profident         | "profident" als Eigenname                |
| profiltext        | Abkürzungserklärung von profil           |
| eigeneDarstellung | Formatierter Text für eigene Abbildungen |
| eigeneAuflistung  | Formatierter Text für eigene Tabellen    |
