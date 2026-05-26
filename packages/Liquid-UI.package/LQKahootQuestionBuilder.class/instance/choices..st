accessing
choices: aText

	self question choices: (((self orderedLinesFor: aText) select: [:value | value withBlanksTrimmed isEmpty not]) collect: #asString).
	self changed: #choiceDescriptions.
	self changed: #correctChoiceIndexString
