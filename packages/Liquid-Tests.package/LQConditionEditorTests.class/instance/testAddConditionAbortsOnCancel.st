testing
testAddConditionAbortsOnCancel

	| result |
	result := self
		run: [self editor addConditionTo: self pollDraft targetIndex: 2]
		answering: {'only if' -> 0}.
	self deny: result.
	self assert: self conditionsOnSecondQuestion isEmpty