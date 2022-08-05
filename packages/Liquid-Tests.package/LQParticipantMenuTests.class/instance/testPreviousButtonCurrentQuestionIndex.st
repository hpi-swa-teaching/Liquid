testing
testPreviousButtonCurrentQuestionIndex

	self participantMenu currentQuestionIndex: 2.
	self participantMenu previousQuestion.
	self assert: self participantMenu currentQuestionIndex equals: 1.
	self participantMenu previousQuestion.
	self assert: self participantMenu currentQuestionIndex equals: 1