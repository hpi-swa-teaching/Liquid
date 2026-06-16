ui requests
chooseOptionFrom: aList title: aString
	"Choose an option from the given list. Answer the index of the selected item."

	^self chooseOptionFrom: aList lines: #() title: aString