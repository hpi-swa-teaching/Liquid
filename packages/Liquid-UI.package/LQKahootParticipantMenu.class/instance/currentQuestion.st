accessing
currentQuestion

	(currentQuestionIndex between: 1 and: quiz questionList size)
		ifFalse: [^ nil].
	^ quiz questionList at: currentQuestionIndex
