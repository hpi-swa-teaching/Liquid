printing
pdfEscape: aString
"replaces Characters pdf-Reader would not recognize otherwise"

	| escaped |
	escaped := aString copyReplaceAll: '\' with: '\\'.
	escaped := escaped copyReplaceAll: '(' with: '\('.
	escaped := escaped copyReplaceAll: ')' with: '\)'.
	^ escaped