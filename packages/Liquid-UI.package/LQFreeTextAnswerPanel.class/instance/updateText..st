accessing
updateText: aText

	self answerText: (self truncate: aText).
	self answer answer: self answerText.
	self changed: #getRemainingCharactersLabel.
	self changed: #retrieveAnswerText