testing
testQuestionList

	self assert: self pollDraftBuilder list size equals: 1.
	self pollDraftBuilder addQuestion.
	self assert: self pollDraftBuilder list size equals: 2.
	self pollDraftBuilder list do: [:question | self assert: (question isKindOf: LQChoicesQuestion)]