testing
testNewWithPollDraft
	| pollDraftBuilder |
	pollDraftBuilder := LQPollDraftBuilder newWithPollDraft: self pollDraft.
	self assert: pollDraftBuilder questionBuilders size equals: 3.
	self assert: (pollDraftBuilder questionBuilders first) class equals: LQMultiChoiceQuestionBuilder.
	self assert: (pollDraftBuilder questionBuilders second) class equals: LQPriorityQuestionBuilder.
	self assert: (pollDraftBuilder questionBuilders third) class equals: LQFreeTextQuestionBuilder.