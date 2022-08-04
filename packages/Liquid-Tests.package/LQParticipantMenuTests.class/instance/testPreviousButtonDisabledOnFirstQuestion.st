testing
testPreviousButtonDisabledOnFirstQuestion
	
	self participantMenu currentQuestionIndex: 1.
	self deny: self participantMenu previousButtonEnabled