accessing
currentQuestionIndex

	^ currentQuestionIndex ifNil: [^currentQuestionIndex := 1]