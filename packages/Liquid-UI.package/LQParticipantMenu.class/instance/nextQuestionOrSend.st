communication
nextQuestionOrSend
	
	(self currentQuestionIndex >= self poll questionList size)
		ifTrue: [^ self sendAnswer].
	self nextQuestion