accessing
choiceList: aText

	self question choiceList: (((self orderedLinesFor: aText)
		select: [:value | (value withBlanksTrimmed = '') not])
		collect: [:value | LQChoice newFrom: value]).
	self changed: #choiceDescriptions