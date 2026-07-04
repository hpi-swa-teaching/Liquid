accessing
timeLimitString: aString

	(self isTextNumber: aString)
		ifTrue: [self question timeLimit: aString asNumber]
