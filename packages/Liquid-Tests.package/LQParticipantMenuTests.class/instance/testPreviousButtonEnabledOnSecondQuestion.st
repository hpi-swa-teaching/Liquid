tests
testPreviousButtonEnabledOnSecondQuestion
	
	self participantMenu currentQuestionIndex: 1.
	self participantMenu nextQuestionOrSend.
	self assert: participantMenu previousButtonEnabled equals: true