accessing
answer: aText 
	answer := aText.
	answer questionId: self question id.
	self changed: #getRemainingCharacters
	