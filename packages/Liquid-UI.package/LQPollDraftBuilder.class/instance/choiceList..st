accessing
choiceList: aText

		self question choiceList: ((aText asString lines asOrderedCollection
		select: [:value | (value withBlanksTrimmed = '') not])
		collect: [:value | LQChoice newFrom: value]).
	self changed: #choiceDescriptions