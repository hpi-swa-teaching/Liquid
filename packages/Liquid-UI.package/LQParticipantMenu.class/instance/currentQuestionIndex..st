accessing
currentQuestionIndex: anObject 
	currentQuestionIndex := anObject.
	self newAnswerPanel.
	self currentAnswerPanel question: self currentQuestion.
	(self currentQuestion type = 'freeText')
		ifFalse:[self currentAnswerPanel
				exclusionMarker: (LQGroupExclusionMarker
					newFrom: self currentQuestion choiceList
					and: (LQPollRepo default groupAt: self poll id)).].
	self answerSet addAnswer: self currentAnswerPanel answer.
	self changed: #previousButtonEnabled.
	self changed: #nextButtonLabel.
	self changed: #questionCounterText