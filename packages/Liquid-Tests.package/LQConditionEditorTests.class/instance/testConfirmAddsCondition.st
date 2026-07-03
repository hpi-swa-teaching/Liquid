testing
testConfirmAddsCondition

	| trigger result condition |
	trigger := self pollDraft questionList first.
	result := self
		run: [self editor
			confirmConditionIn: self pollDraft
			target: 2
			trigger: trigger
			choice: trigger choiceList first]
		answering: {}.
	self assert: result.
	self assert: self conditionsOnSecondQuestion size equals: 1.
	condition := self conditionsOnSecondQuestion first.
	self assert: condition triggerQuestionId equals: trigger id.
	self assert: condition triggerChoiceDescription equals: 'Red'