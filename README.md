# Deg-NAK-LaTex

Das hier ist meine private LaTex-Vorlage, die ich auf der Grundlage einer inoffiziellen Vorlage eines Studenten an der NAK nach meinen Bedürfnissen angepasst habe.

Ich habe sie erfolgreich zum Verfassen von Transferleistungen genutzt.
Um eine Transferleistung zu erstellen, erstellt einfach ein Repository auf der Grundlage dieses Repositories.

## Verwendung

### Kompatibilität

Getestet habe ich diese Vorlage

- unter Linux mit TexLive (``sudo apt-get install texlive texlive-lang-german texlive-latex-extra``)
- mithilfe von [Overleaf](https://overleaf.com) (Empfehlung für Anfänger oder Gruppen)
- unter Windows mit [MikTeX](https://miktex.org) (Oder mit [chocolatey](https://chocolatey.org): ``choco install miktex``)

Für die Verwendung der verbesserten Codeblöcke muss das Paket minted und Python, und das python-Modul [pygments](https://pygments.org/download/) eingebunden werden.

### Build

Zum Bauen der PDF habe ich folgende Befehlskette genutzt:

- pdflatex
- bibtex
- pdflatex
- pdflatex

Sowohl unter Overleaf, als auch mit den VSCode-Workspace-Settings ist dies allerdings voreingestellt.

### Editor

Als Editor empfehle ich [Visual Studio Code](https://code.visualstudio.com).
Hierfür habe ich auch die Projektdateien eingecheckt.
Die dafür empfohlenen Extensions sollte euch VSCode beim Öffnen des Repositories gleich vorschlagen.

Alternativ kann ich, wenn ihr euch kein TeX + Editor installieren wollt, [Overleaf](https://www.overleaf.com/) empfehlen.
Hierzu downloadet den Code des Repos einfach als Zip und importiert diese beim Erstellen des Projekts in Overleaf.

## Beziehung zur data experts

Ich arbeite (Zeitpunkt der Erstellung) bei der data experts, dieses Repository ist jedoch in keinster Weise mit der data experts gmbh verbunden.
Die Rechte am data experts Logo liegen bei der data experts gmbh.

## Außerhalb der data experts

Wenn ihr keine Mitarbeiter der data experts seid, könnt ihr die Vorlage ohne großen Aufwand ebenfalls nutzen.
Dafür ändert ihr einfach die Dokumentenklasse in [transferleistung.tex](transferleistung.tex) auf TLNakLatex.

Aus ``\documentclass{DegTLNakLatex}`` wird ``\documentclass{TLNakLatex}``. Easy.

Schon taucht das Logo nicht mehr auf und die [DEG-Kommandos](#deg-kommandos) sind nicht mehr aktiv.
(Vorsicht: ihr könntet über Fehlermeldungen in der [Beispieldatei](content/beispiel.tex) stoßen!)

## DEG-Kommandos

Die Vorlage enthält ein paar wenige deg-Kommandos, die nicht viel mehr tun, als einen einheitlichen Stil zu vereinfachen.

Diese sind in der [DegTLNakLatex.cls](DegTLNakLatex.cls) zu finden und können dort dementsprechend bearbeitet werden.

Dazu sind [hier](content/acronyms.tex) Akronyme definiert, die für die Arbeit in der data experts nützlich sind.
