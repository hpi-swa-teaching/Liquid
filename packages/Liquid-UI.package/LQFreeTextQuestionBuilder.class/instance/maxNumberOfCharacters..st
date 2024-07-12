accessing
maxNumberOfCharacters: aText

	((self isTextNumber: aText) and: [aText notEmpty])
		ifTrue: [self question maxNumberOfCharacters: (self determineMaxNumberOfCharactersFrom: aText)]
		ifFalse: [aText ifEmpty: [self question maxNumberOfCharacters: nil]].
	self changed: #maxNumberOfCharacters