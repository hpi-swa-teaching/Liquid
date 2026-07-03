testing
testPickTriggerQuestionReturnsNilOnCancel

	| picked |
	picked := self
		run: [self editor pickTriggerQuestionIn: self pollDraft targetIndex: 2]
		answering: {'only if' -> 0}.
	self assert: picked isNil