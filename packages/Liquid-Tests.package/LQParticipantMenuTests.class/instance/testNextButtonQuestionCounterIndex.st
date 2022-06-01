tests
testNextButtonQuestionCounterIndex

	self participantMenu nextQuestion.
	self assert: self participantMenu questionCounterText equals: 'Question: 2 / 2'