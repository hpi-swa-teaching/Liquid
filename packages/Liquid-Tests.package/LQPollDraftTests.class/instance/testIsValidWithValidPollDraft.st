testing
testIsValidWithValidPollDraft

	self pollDraft questionList: {self createQuestionOne. self createQuestionTwo. self createQuestionThree}.
	self assert: self pollDraft isValid