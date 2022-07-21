accessing
currentQuestionIndex: anObject
	
	currentQuestionIndex := anObject.
	
	self answerPanel question: self currentQuestion.
	self answerSet addAnswer: self answerPanel answer.
	
	self changed: #previousButtonEnabled.
	self changed: #nextButtonLabel.
	self changed: #questionCounterText.