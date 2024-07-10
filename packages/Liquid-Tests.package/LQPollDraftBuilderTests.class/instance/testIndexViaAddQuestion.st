testing
testIndexViaAddQuestion
	| indexBefore indexAfter |
	indexBefore := 1.
	indexAfter := 2.
	self pollDraftBuilder addMultiChoiceQuestion.
	self assert: self pollDraftBuilder getIndex equals: indexBefore.
	self pollDraftBuilder addMultiChoiceQuestion.
	
	self assert: self pollDraftBuilder getIndex equals: indexAfter