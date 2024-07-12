testing
testDetermineMaxNumberOfCharacters

	| maxNumberOfCharacters |
	maxNumberOfCharacters := self questionBuilder determineMaxNumberOfCharactersFrom: '5' asText.
	self assert: maxNumberOfCharacters equals: 5