accessing
maxNumberOfChoices: aText

	((self isTextNumber: aText) and: [aText notEmpty])
		ifTrue: [self question maxNumberOfChoices: (self determineMaxNumberOfChoicesFrom: aText)]
		ifFalse: [aText ifEmpty: [self question maxNumberOfChoices: nil]].
	self changed: #maxNumberOfChoices