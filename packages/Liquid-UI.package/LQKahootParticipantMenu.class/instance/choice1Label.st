accessing
choice1Label
	self hasSubmitted ifTrue: [^ 'Waiting for Next Question...'].
	self currentQuestion ifNil: [^ ''].
	^ self currentQuestion choices size >= 1
		ifTrue: [self currentQuestion choices at: 1]
		ifFalse: ['']
