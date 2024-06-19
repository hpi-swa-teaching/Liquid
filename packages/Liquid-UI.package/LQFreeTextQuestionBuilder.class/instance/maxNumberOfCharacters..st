accessing
maxNumberOfCharacters: aText

	((self isTextNumber: aText) and: [aText notEmpty])
		ifTrue: [self question maxNumberOfCharacters: (self determineMaxNumberOfChoicesFrom: aText)]
		ifFalse: [aText isEmpty ifTrue: [self question maxNumberOfCharacters: nil]].
	self changed: #maxNumberOfCharacters