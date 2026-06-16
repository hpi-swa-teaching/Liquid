accessing
itemAlignment: aSymbol
	"For convenience, map #left and #right to their correct values. At least for Morphic."
	
	aSymbol == #left ifTrue: [^ itemAlignment := #leftCenter].
	aSymbol == #right ifTrue: [^ itemAlignment := #rightCenter].
	
	itemAlignment := aSymbol.