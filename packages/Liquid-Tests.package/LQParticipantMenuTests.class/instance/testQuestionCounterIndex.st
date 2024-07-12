testing
testQuestionCounterIndex

	self participantMenu currentQuestionIndex: 1.
	self assert: self participantMenu questionCounterText equals: self expectedQuestionCounterText.
	self participantMenu nextQuestionOrSend.
	self assert: self participantMenu questionCounterText equals: self expectedQuestionCounterText