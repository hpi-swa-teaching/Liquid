communication
nextQuestionOrSend
	
	(self currentQuestionIndex >= self poll pollDraft questionList size)
		ifTrue: [^ self sendAnswer].
	self nextQuestion