accessing
currentQuestionIndex: anObject
	
	currentQuestionIndex := anObject.
	
	self answerPanel question: self currentQuestion.
	self answerPanel exclusionMarker: (LQGroupExclusionMarker newFrom: self currentQuestion choiceList and: (LQPollRepo default groupAt: self poll id)).
	self answerSet addAnswer: self answerPanel answer.
	
	self changed: #previousButtonEnabled.
	self changed: #nextButtonLabel.
	self changed: #questionCounterText.