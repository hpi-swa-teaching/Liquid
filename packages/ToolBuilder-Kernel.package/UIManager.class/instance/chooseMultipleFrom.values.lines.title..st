ui requests
chooseMultipleFrom: labelList values: valueList lines: linesArray title: aString
	"Choose one or more items from the given list. Answer the selected items."

	^ (self chooseFrom: labelList values: valueList lines: linesArray title: aString)
		ifNil: [#()]
		ifNotNil: [:resultValue | {resultValue}]