testing
testRemoveConditionCancelsOnEmptyInput

	self addConditionFrom: self pollDraft questionList first choice: 'Red'.
	self deny: (self
		run: [self editor removeConditionFrom: self pollDraft targetIndex: 2]
		answering: {'Enter number' -> ''}).
	self assert: self conditionsOnSecondQuestion size equals: 1