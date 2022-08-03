# Use Case Tests to ensure high Usability

![Untitled](https://user-images.githubusercontent.com/47246301/182670408-d91ca4d9-bcb9-4ead-a1e5-3b2990f9bf52.png)


# UC 1: einfachen Poll erstellen

Der Host startet das LQStartMenu und legt einen Poll mit einer Frage und zwei Antwortoptionen an. Diesen startet er mit einer auto-generierten ID, die er in sein Clipboard kopiert und den Teilnehmern anderweitig (außerhalb der Systemgrenze) zur Verfügung stellt.

**maximale Klicks:** 8

**maximale Fensterzahl:** 5

# UC 2: komplexen Poll erstellen

Der Host startet das LQStartMenu und legt einen Poll mit drei Fragen und zwei/vier/sechs Antwortoptionen an. Diesen startet er mit einer selbst-gewählten ID.

**maximale Klicks:** 15

**maximale Fensterzahl:** 5 (Fensterzahl darf nicht mit Anzahl der Fragen ansteigen, vgl. UC 1)

# UC 3: einfachen Poll beantworten

Der in UC1 erstellte Poll wird beantwortet. Dabei wählt der Participant direkt die finale Antwort aus und sendet seine Ergebnisse. Der Use-Case startet mit dem LQStartMenu; d.h. die Poll-ID ist noch anzugeben.

**maximale Klicks:** 5

**maximale Fensterzahl:** 4

# UC 4: komplexen Poll beantworten

Der in UC2 erstellte Poll wird beantwortet. Dabei wählt der Participant direkt die finalen Antworten aus. Dann wird die Navigation (Previous-Button/Next-Button) verwendet um zur ersten Frage zu gelangen und die Antworten aller drei Fragen zu reviewen. Wenn der Nutzer wieder bei der letzten Frage angekommen ist, sendet dieser seine Auswahl mit dem Send-Answers-Button.

**maximale Klicks:** 15

**maximale Fensterzahl:** 4

# UC 6: Lightning-Talks vorbereiten

Der Host startet das LQStartMenu und meldet sich als Host an. Dann lädt er ein User-Set im korrekten Format hoch, gibt diesem den Bezeichner “SWT-22-LTalks” und legt dieses ab. Dann wird ein wie in UC1 beschriebener Einfacher Poll erstellt, also mit einer Frage und mehreren Antwortmöglichtkeiten (je Team eine Option) konfiguriert. Die Group-based-Answer-Exclusion wird über die Inline-Angaben (Brackets) verwendet. Dann wird eine Poll-ID auto-generiert und ein User-Set ausgewählt. Die Credentials werden via Mail an die Teilnehmer aus dem User-Set übermittelt.

**maximale Klicks:** 15

**maximale Fensterzahl:** 7 (höher als UC2 aufgrund des Mail-Dialogs)
