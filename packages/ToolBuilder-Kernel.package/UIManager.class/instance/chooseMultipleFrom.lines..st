ui requests
chooseMultipleFrom: aList lines: linesArray
	"Choose one or more items from the given list. Answer the indices of the selected items."
	
	^ self chooseMultipleFrom: aList lines: linesArray title: ''