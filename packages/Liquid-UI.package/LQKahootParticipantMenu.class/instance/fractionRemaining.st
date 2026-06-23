accessing
fractionRemaining

	| elapsed remaining |
	self quiz ifNil: [^ 0.0].
	self quiz currentQuestionStartTime ifNil: [^ 0.0].
	self currentQuestion ifNil: [^ 0.0].
	self currentQuestion timeLimit <= 0 ifTrue: [^ 0.0].
	elapsed := Time millisecondClockValue - self quiz currentQuestionStartTime.
	elapsed < 0 ifTrue: [elapsed := 0].
	remaining := (self currentQuestion timeLimit * 1000 - elapsed) max: 0.
	^ remaining asFloat / (self currentQuestion timeLimit * 1000) asFloat
