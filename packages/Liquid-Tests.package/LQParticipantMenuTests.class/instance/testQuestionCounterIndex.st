tests
testQuestionCounterIndex
	
	self participantMenu currentQuestionIndex: 1.
	self assert: self participantMenu questionCounterText equals: 'Question: ', self participantMenu currentQuestionIndex, ' / ', self participantMenu poll pollDraft questionList size.
	self participantMenu nextQuestionOrSend.
	self assert: self participantMenu questionCounterText equals: 'Question: ', self participantMenu currentQuestionIndex, ' / ', self participantMenu poll pollDraft questionList size
	