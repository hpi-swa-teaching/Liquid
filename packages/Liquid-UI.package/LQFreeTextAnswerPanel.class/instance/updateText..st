accessing
updateText: aText 
	self getCharactersRemaining > 0
		ifTrue: [answer answer: aText.
			answer questionId: self question id].
	self changed: #getRemainingCharactersLabel.
	self changed: #retrieveAnswerText