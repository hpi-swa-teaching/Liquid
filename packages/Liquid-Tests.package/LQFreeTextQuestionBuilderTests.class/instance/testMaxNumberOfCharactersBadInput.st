testing
testMaxNumberOfCharactersBadInput

	self questionBuilder maxNumberOfCharacters: 'no valid number'.
	self assert: questionBuilder maxNumberOfCharacters equals: '100'.