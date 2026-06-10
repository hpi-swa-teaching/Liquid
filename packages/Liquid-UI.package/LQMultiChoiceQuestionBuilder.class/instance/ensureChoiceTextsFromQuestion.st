accessing
ensureChoiceTextsFromQuestion
	self choiceTexts: (self question choiceList collect: [:each | each rawString]) asOrderedCollection.
	[self choiceTexts size < 2] whileTrue: [self choiceTexts add: '']