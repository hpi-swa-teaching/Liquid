tests
testPreviousButtonEnabledOnSecondQuestion
	
	self participantMenu currentQuestionIndex: 1.
	self participantMenu nextQuestionOrSend.
	self assert: self participantMenu previousButtonEnabled