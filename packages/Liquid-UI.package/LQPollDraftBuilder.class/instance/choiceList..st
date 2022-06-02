accessing
choiceList: aText

	self question choiceList: (aText asString lines asOrderedCollection
		collect: [:value | value withBlanksTrimmed]
		thenSelect: [:value | (value withBlanksTrimmed = '') not]).
	self changed: #choiceList