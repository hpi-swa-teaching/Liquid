testing
testPickTriggerQuestionReturnsChosenQuestion

	| picked |
	picked := self
		run: [self editor pickTriggerQuestionIn: self pollDraft targetIndex: 2]
		answering: {'only if' -> 'Color?'}.
	self assert: picked equals: self pollDraft questionList first