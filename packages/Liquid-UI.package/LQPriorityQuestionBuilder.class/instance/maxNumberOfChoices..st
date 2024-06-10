accessing
maxNumberOfChoices: aText

	((self isTextNumber: aText) and: [aText notEmpty])
		ifTrue: [self question maxNumberOfChoices: (self determineMaxNumberOfCharactersFrom: aText)]
		ifFalse: [aText isEmpty ifTrue: [self question maxNumberOfChoices: nil]].
	self changed: #maxNumberOfChoices