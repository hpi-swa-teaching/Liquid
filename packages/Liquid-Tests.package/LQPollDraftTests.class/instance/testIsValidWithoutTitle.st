testing
testIsValidWithoutTitle

	| invalidQuestion |
	invalidQuestion := self createQuestionOne title: nil.
	self pollDraft questionList: {invalidQuestion. self createQuestionTwo. self createQuestionThree}.
	self assert: self pollDraft isValid not