as yet unclassified
extractGroups: aString

	| openingBracketLocation closingBracketLocation rawGroups splitGroups |

	openingBracketLocation := aString findString: '['.
	closingBracketLocation := aString findLastOccurrenceOfString: ']' startingAt: openingBracketLocation .
		
	((openingBracketLocation == 0) or: [closingBracketLocation == 0])
		ifTrue: [^ OrderedCollection new].

	rawGroups := aString copyFrom: openingBracketLocation + 1 to: closingBracketLocation -1.
	splitGroups := rawGroups subStrings: ','.
	
	^ (splitGroups collect: [:group | group withBlanksTrimmed]) asOrderedCollection