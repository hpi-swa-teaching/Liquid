testing
testQuestionList

	| sizeBefore sizeAfter |
	
	sizeBefore := 1.
	sizeAfter := 2.
	self assert: self pollDraftBuilder list size equals: sizeBefore.
	self pollDraftBuilder addMultiChoiceQuestion.
	self assert: self pollDraftBuilder list size equals: sizeAfter.
	self pollDraftBuilder list do: [:question | self assert: (question isKindOf: LQChoicesQuestion)]