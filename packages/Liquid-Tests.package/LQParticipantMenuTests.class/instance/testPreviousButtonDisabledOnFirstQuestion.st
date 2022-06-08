tests
testPreviousButtonDisabledOnFirstQuestion
	
	self participantMenu currentQuestionIndex: 1.
	self assert: participantMenu previousButtonEnabled equals: false.