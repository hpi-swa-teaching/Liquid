testing
testAddChoiceIncreasesFieldCount
	| sizeBefore |
	sizeBefore := self questionBuilder choiceTexts size.
	self questionBuilder addChoice.
	self assert: self questionBuilder choiceTexts size equals: sizeBefore + 1