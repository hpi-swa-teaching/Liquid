accessing
choiceList: aText

	self question choiceList: (aText asString lines asOrderedCollection
		select: [:value | (value withBlanksTrimmed = '') not]).
	self changed: #choiceList