tests
testNextButtonLabelOnLastQuestion
	
	self participantMenu currentQuestionIndex: self participantMenu poll pollDraft questionList size.
	self assert: participantMenu nextButtonLabel equals: 'Send Answers'.