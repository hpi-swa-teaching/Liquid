extracting
extractDescription: aString
	
	| firstBracketLocation rawDescription |

	firstBracketLocation := aString findString: '['.
		
	(firstBracketLocation == 0) ifTrue: [^ aString withBlanksTrimmed].

	rawDescription := aString copyFrom: 1 to: (firstBracketLocation - 1).
	
	^ rawDescription withBlanksTrimmed