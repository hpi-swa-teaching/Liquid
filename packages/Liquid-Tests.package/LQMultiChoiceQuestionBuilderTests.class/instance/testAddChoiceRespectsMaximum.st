testing
testAddChoiceRespectsMaximum
	[self questionBuilder choiceTexts size < self questionBuilder maxChoiceFieldCount] whileTrue: [
		self questionBuilder addChoice].
	self assert: self questionBuilder choiceTexts size equals: self questionBuilder maxChoiceFieldCount.
	self questionBuilder addChoice.
	self assert: self questionBuilder choiceTexts size equals: self questionBuilder maxChoiceFieldCount.
	self deny: self questionBuilder addChoiceButtonEnabled