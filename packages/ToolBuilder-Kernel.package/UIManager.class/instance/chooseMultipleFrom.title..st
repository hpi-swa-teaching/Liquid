ui requests
chooseMultipleFrom: aList title: aString
	"Choose one or more items from the given list. Answer the indices of the selected items."
	
	^self chooseMultipleFrom: aList lines: #() title: aString