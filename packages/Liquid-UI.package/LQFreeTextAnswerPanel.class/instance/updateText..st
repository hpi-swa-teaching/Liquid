accessing
updateText: aText 
	answer answer: aText.
	answer questionId: self question id.
	self changed: #getRemainingCharacters.
	self changed: #retrieveAnswerText