communication
nextQuestionOrSend
	
	(self answerPanel selectedChoices isEmpty)
		ifTrue: [^ self].
	(self currentQuestionIndex >= self poll pollDraft questionList size)
		ifTrue: [^ self sendAnswer].
	self nextQuestion.