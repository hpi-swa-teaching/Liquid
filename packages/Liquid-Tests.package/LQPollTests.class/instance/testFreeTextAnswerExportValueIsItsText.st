testing
testFreeTextAnswerExportValueIsItsText

	| freeText |
	freeText := LQFreeTextAnswer new.
	freeText answer: 'hello'.
	self assert: freeText exportValue equals: 'hello'.
	self assert: freeText exportValue isString.