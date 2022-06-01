communication
previousQuestion

	(self currentQuestionIndex = 1)
		ifTrue: [^ self].
	self currentQuestionIndex: self currentQuestionIndex - 1.
	self answerPanel question: self currentQuestion.
	self answerSet addAnswer: self answerPanel answer.