modifying
nextQuestion

	self currentQuestionIndex >= self poll questionList size ifTrue: [^ self].
	self currentQuestionIndex: self currentQuestionIndex + 1