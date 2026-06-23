accessing
timeRemaining

	| elapsed remaining |
	self quiz ifNil: [^ ''].
	self quiz currentQuestionStartTime ifNil: [^ ''].
	self currentQuestion ifNil: [^ ''].
	elapsed := Time millisecondClockValue - self quiz currentQuestionStartTime.
	elapsed < 0 ifTrue: [elapsed := 0].
	remaining := ((self currentQuestion timeLimit * 1000 - elapsed) max: 0) // 1000.
	^ remaining asString , ' s'
