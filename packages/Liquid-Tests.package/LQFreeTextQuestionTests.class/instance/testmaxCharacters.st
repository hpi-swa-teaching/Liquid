testing
testmaxCharacters
	
	| numberOfCharacters |
	numberOfCharacters := 1234.
	self question maxNumberOfCharacters: numberOfCharacters.
	self assert: self question maxNumberOfCharacters equals: numberOfCharacters