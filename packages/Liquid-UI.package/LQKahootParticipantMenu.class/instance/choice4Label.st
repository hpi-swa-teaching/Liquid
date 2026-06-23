accessing
choice4Label
	self hasSubmitted ifTrue: [^ ''].
	self currentQuestion ifNil: [^ ''].
	^ self currentQuestion choices size >= 4
		ifTrue: [self currentQuestion choices at: 4]
		ifFalse: ['']
