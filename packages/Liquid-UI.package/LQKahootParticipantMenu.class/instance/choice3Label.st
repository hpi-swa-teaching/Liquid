accessing
choice3Label
	self hasSubmitted ifTrue: [^ ''].
	self currentQuestion ifNil: [^ ''].
	^ self currentQuestion choices size >= 3
		ifTrue: [self currentQuestion choices at: 3]
		ifFalse: ['']
