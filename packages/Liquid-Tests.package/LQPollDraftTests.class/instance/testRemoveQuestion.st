testing
testRemoveQuestion
	| question1 question2 |
	self assert: self pollDraft questionList isEmpty.
	question1 := LQChoicesQuestion new. 
	question1 title: 'An interesting first question!'.
	self pollDraft addQuestion: question1.
	question2 := LQChoicesQuestion new.
	question2 title: 'An interesting second question!'.
	self pollDraft addQuestion: question2.
	self pollDraft removeQuestionAt: 1.
	self assert: self pollDraft questionList size equals: 1.
	self assert: self pollDraft questionList first title equals: 'An interesting second question!'