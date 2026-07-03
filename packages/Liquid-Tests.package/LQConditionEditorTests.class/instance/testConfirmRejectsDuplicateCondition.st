testing
testConfirmRejectsDuplicateCondition

	| trigger add |
	trigger := self pollDraft questionList first.
	add := [self run: [self editor
		confirmConditionIn: self pollDraft
		target: 2
		trigger: trigger
		choice: trigger choiceList first] answering: {}].
	self assert: add value.
	self deny: add value.
	self assert: self conditionsOnSecondQuestion size equals: 1