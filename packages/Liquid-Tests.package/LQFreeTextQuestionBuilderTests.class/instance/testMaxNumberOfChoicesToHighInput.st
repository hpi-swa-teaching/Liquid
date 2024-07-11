testing
testMaxNumberOfChoicesToHighInput

	| maxNumber |
	maxNumber:= self questionBuilder determineMaxNumberOfCharactersFrom: '1000000' asText.
	self assert: maxNumber equals: 10000
	