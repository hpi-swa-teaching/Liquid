printing
pdfEscape: aString
	
	| escaped |
	escaped := aString copyReplaceAll: '\' with: '\\'.
	escaped := escaped copyReplaceAll: '(' with: '\('.
	escaped := escaped copyReplaceAll: ')' with: '\)'.
	escaped := escaped copyReplaceAll: 'ä' with: '\344'.
	escaped := escaped copyReplaceAll: 'ö' with: '\366'.
	escaped := escaped copyReplaceAll: 'ü' with: '\374'.
	escaped := escaped copyReplaceAll: 'Ä' with: '\304'.
	escaped := escaped copyReplaceAll: 'Ö' with: '\326'.
	escaped := escaped copyReplaceAll: 'Ü' with: '\334'.
	escaped := escaped copyReplaceAll: 'ß' with: '\337'.
	^ escaped