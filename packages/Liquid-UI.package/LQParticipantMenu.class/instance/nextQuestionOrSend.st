communication
nextQuestionOrSend
	
	(self currentAnswerPanel isEveryChoiceRanked) ifFalse:[^self].
	(self currentQuestionIndex >= self poll questionList size)
		ifTrue: [^ self sendAnswer].
	self nextQuestion