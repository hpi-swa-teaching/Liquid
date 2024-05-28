testing
testAddQuestion

	| question |
	self assert: self pollDraft questionList isEmpty.
	question := LQMultChoiceQuestion new.
	question title: 'An interesting question!'.
	self pollDraft addQuestion: question.
	self assert: self pollDraft questionList size equals: 1.
	self assert: self pollDraft questionList first title equals: 'An interesting question!'