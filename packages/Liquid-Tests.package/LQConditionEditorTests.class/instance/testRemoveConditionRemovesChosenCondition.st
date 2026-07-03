testing
testRemoveConditionRemovesChosenCondition

	| trigger result |
	trigger := self pollDraft questionList first.
	self addConditionFrom: trigger choice: 'Red'.
	self addConditionFrom: trigger choice: 'Blue'.
	result := self
		run: [self editor removeConditionFrom: self pollDraft targetIndex: 2]
		answering: {'Enter number' -> '1'}.
	self assert: result.
	self assert: self conditionsOnSecondQuestion size equals: 1.
	self assert: self conditionsOnSecondQuestion first triggerChoiceDescription equals: 'Blue'