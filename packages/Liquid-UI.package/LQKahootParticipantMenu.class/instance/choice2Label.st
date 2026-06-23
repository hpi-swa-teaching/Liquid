accessing
choice2Label
	self hasSubmitted ifTrue: [^ ''].
	self currentQuestion ifNil: [^ ''].
	^ self currentQuestion choices size >= 2
		ifTrue: [self currentQuestion choices at: 2]
		ifFalse: ['']
