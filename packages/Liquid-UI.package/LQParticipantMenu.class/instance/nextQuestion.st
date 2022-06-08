communication
nextQuestion

	(self currentQuestionIndex >= self poll pollDraft questionList size)
		ifTrue: [^ self].
	self currentQuestionIndex: self currentQuestionIndex + 1