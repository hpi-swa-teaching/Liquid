accessing
currentQuestionIndex: anObject
	currentQuestionIndex := anObject.
	self changed: #previousButtonEnabled.
	self changed: #nextButtonLabel.
	self changed: #questionCounterText.