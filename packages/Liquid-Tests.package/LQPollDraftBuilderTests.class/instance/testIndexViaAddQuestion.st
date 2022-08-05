testing
testIndexViaAddQuestion

	| indexBefore indexAfter |
	
	indexBefore := 2.
	indexAfter := 3.
	self pollDraftBuilder addQuestion.
	self assert: self pollDraftBuilder getIndex equals: indexBefore.
	self pollDraftBuilder addQuestion.
	self assert: self pollDraftBuilder getIndex equals: indexAfter