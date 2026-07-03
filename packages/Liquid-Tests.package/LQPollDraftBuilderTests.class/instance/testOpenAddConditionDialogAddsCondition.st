testing
testOpenAddConditionDialogAddsCondition

	| builder targetId |
	builder := self builderWithMultiChoiceQuestion.
	builder addMultiChoiceQuestion.
	builder pollDraft questionList first title: 'Color?'.
	targetId := builder pollDraft questionList second id.
	self
		run: [builder openAddConditionDialog]
		answering: {'only if' -> 'Color?'. 'the answer to' -> 'Alice'}.
	self assert: (builder pollDraft conditionsForTarget: targetId) size equals: 1