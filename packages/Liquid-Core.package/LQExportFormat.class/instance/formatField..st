formatting
formatField: aString

	(shouldQuote and: [self needsQuoting: aString]) ifFalse: [^ aString].
	^ '"', (aString copyReplaceAll: '"' with: '""'), '"'