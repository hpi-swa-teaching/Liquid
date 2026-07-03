testing
testRemoveConditionFromCurrentQuestionRemovesCondition

	| builder targetId |
	builder := self builderWithMultiChoiceQuestion.
	builder addMultiChoiceQuestion.
	targetId := builder pollDraft questionList second id.
	builder pollDraft addCondition: (LQQuestionCondition
		triggerQuestion: builder pollDraft questionList first id
		triggerChoice: 'Alice'
		target: targetId).
	self
		run: [builder removeConditionFromCurrentQuestion]
		answering: {'Enter number' -> '1'}.
	self assert: (builder pollDraft conditionsForTarget: targetId) isEmpty