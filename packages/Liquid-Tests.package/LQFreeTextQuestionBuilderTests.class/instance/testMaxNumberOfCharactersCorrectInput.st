testing
testMaxNumberOfCharactersCorrectInput

	self questionBuilder maxNumberOfCharacters: '3'.
	self assert: questionBuilder maxNumberOfCharacters equals: '3'.