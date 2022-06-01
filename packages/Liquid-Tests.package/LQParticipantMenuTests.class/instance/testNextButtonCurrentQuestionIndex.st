tests
testNextButtonCurrentQuestionIndex

	self participantMenu nextQuestion.
	self assert: self participantMenu currentQuestionIndex equals: 2