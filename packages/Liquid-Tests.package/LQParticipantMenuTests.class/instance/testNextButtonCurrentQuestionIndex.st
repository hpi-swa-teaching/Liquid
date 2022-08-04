testing
testNextButtonCurrentQuestionIndex

	self participantMenu currentQuestionIndex: 1.
	self participantMenu nextQuestionOrSend.
	self assert: self participantMenu currentQuestionIndex equals: 2