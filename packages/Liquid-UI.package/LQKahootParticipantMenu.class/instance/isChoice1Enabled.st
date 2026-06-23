accessing
isChoice1Enabled
	self hasSubmitted ifTrue: [^ false].
	self currentQuestion ifNil: [^ false].
	^ self currentQuestion choices size >= 1
