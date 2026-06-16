ui requests
chooseMultipleFrom: aList
	"Choose one or more items from the given list. Answer the indices of the selected items."
	
	^ self chooseMultipleFrom: aList lines: #()