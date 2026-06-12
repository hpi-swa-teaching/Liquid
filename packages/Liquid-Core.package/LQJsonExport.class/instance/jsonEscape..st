printing
jsonEscape: aString

	^ (aString copyReplaceAll: '\' with: '\\') copyReplaceAll: '"' with: '\"'