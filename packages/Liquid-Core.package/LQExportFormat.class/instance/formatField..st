formatting
formatField: aString

	shouldQuote ifFalse: [^ aString].
	^ '"', (aString copyReplaceAll: '"' with: '""'), '"'