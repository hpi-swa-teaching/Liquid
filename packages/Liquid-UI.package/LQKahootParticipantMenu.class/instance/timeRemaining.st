accessing
timeRemaining

	| elapsed remaining |
	self quiz ifNil: [^ ''].
	self quiz currentQuestionStartTime ifNil: [^ ''].
	self currentQuestion ifNil: [^ ''].
	elapsed := Time totalSeconds - self quiz currentQuestionStartTime.
	elapsed < 0 ifTrue: [elapsed := 0].
	remaining := (self currentQuestion timeLimit - elapsed) max: 0.
	^ remaining asString, ' s'