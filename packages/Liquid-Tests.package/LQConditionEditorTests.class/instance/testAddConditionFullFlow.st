testing
testAddConditionFullFlow

	| result |
	result := self
		run: [self editor addConditionTo: self pollDraft targetIndex: 2]
		answering: {'only if' -> 'Color?'. 'the answer to' -> 'Red'}.
	self assert: result.
	self assert: self conditionsOnSecondQuestion size equals: 1.
	self assert: self conditionsOnSecondQuestion first triggerChoiceDescription equals: 'Red'