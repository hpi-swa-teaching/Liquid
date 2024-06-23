testing
testIndexViaAddQuestion

	| indexBefore indexAfter |
	
	indexBefore := 2.
	indexAfter := 3.
	self pollDraftBuilder addMultiChoiceQuestion.
	self assert: self pollDraftBuilder getIndex equals: indexBefore.
	self pollDraftBuilder addMultiChoiceQuestion.
	self assert: self pollDraftBuilder getIndex equals: indexAfter