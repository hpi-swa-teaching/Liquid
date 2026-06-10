testing
testRemoveChoiceAtRespectsMinimum
	self questionBuilder addChoice.
	self assert: self questionBuilder choiceTexts size equals: 3.
	self questionBuilder removeChoiceAt: 3.
	self assert: self questionBuilder choiceTexts size equals: 2.
	self questionBuilder removeChoiceAt: 1.
	self assert: self questionBuilder choiceTexts size equals: 2