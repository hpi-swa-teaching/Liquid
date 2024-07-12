testing
testNextButtonSendAnswerOnLastIndex

	| startMenu |
	self participantMenu currentQuestionIndex: self participantMenu poll pollDraft questionList size.
	startMenu := self participantMenu nextQuestionOrSend.
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy