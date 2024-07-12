testing
testIsValidWithoutChoiceList

	| invalidQuestion |
	invalidQuestion := self createQuestionOne choiceList: {}.
	self pollDraft questionList: {invalidQuestion. self createQuestionTwo. self createQuestionThree}.
	self assert: self pollDraft isValid not