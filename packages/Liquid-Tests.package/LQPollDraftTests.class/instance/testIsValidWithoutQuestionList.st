testing
testIsValidWithoutQuestionList
	self assert: self pollDraft questionList isEmpty.
	self assert: self pollDraft isValid not