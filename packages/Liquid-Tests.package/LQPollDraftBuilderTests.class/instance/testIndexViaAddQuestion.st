testing
testIndexViaAddQuestion

	self pollDraftBuilder addQuestion.
	self assert: self pollDraftBuilder getIndex equals: 2.
	self pollDraftBuilder addQuestion.
	self assert: self pollDraftBuilder getIndex equals: 3