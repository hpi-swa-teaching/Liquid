tests
testNextButtonLabelOnLastQuestion
	
	self participantMenu currentQuestionIndex: self participantMenu poll pollDraft questionList size.
	self assert: self participantMenu nextButtonLabel equals: 'Send Answers'