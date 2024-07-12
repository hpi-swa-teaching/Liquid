extracting
extractGroups: aString

	| openingBracketLocation closingBracketLocation rawGroups splitGroups |
	openingBracketLocation := aString findString: '['.
	closingBracketLocation := aString
		findLastOccurrenceOfString: ']'
		startingAt: openingBracketLocation.
	
	(openingBracketLocation isZero or: [closingBracketLocation isZero]) ifTrue: [^ OrderedCollection new].
	
	rawGroups := aString copyFrom: openingBracketLocation + 1 to: closingBracketLocation - 1.
	splitGroups := rawGroups subStrings: ','.
	
	^ (splitGroups collect: [:group | group withBlanksTrimmed]) asOrderedCollection