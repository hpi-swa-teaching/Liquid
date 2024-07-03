testing
testQuestionList
	| sizeBefore sizeAfter |
	sizeBefore := 0.
	sizeAfter := 2.
	self assert: self pollDraftBuilder list size equals: sizeBefore.
	self pollDraftBuilder addMultiChoiceQuestion.
	self pollDraftBuilder addPriorityQuestion.
	self assert: self pollDraftBuilder list size equals: sizeAfter.
	self pollDraftBuilder list
		do: [:question | self
				assert: ((question isKindOf: LQMultiChoiceQuestion)
						or: (question isKindOf: LQPriorityQuestion))]