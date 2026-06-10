accessing
choiceList: aText
	self isInLiveEditMode ifTrue: [self question wasEdited: true].
	self choiceTexts: ((self orderedLinesFor: aText) select: [:value | (value withBlanksTrimmed = '') not]) asOrderedCollection.
	[self choiceTexts size < 2] whileTrue: [self choiceTexts add: ''].
	self syncChoiceListFromChoiceTexts.
	self changed: #buildPanelChildren