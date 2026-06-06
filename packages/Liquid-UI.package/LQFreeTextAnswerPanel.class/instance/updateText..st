accessing
updateText: aText

	self answerText: (self truncate: aText).
	self answer answer: self answerText.
	self changed: #getRemainingCharactersLabel.
	self changed: #retrieveAnswerText.
	(self question wasEdited) ifTrue: [self answer wasSubmittedOnOriginalQuestion: false].