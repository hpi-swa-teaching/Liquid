tests
testPreviousButtonDisabledOnFirstQuestion
	
	self participantMenu currentQuestionIndex: 1.
	self assert: self participantMenu previousButtonEnabled equals: false.