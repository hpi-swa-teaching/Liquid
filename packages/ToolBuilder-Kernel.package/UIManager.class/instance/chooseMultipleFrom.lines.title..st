ui requests
chooseMultipleFrom: aList lines: linesArray title: aString
	"Choose one or more items from the given list. Answer the indices of the selected items."
	
	^ (self chooseFrom: aList lines: linesArray title: aString) in: [:result |
		result = 0 ifTrue: [#()] ifFalse: [{result}]]