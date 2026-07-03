testing
testPickChoiceRejectsEmptyChoiceList

	| emptyBuilder |
	emptyBuilder := LQMultiChoiceQuestionBuilder new question: LQMultiChoiceQuestion new; yourself.
	self assert: (self run: [self editor pickChoiceFrom: emptyBuilder] answering: {}) isNil