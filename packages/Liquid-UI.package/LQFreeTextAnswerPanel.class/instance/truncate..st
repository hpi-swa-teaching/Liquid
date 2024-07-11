accessing
truncate: aText
	|text|
	text := aText.
	text := text copyReplaceAll: ';' with: ''.
	text := text copyReplaceAll: ':' with: ''. 
	^text first: (text size min: self question maxNumberOfCharacters)