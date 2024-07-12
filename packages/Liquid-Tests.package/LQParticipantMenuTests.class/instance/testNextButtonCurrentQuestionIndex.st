testing
testNextButtonCurrentQuestionIndex

	| indexBefore indexAfter |
	indexBefore := 1.
	indexAfter := 2.
	self participantMenu currentQuestionIndex: indexBefore.
	self participantMenu nextQuestionOrSend.
	self assert: self participantMenu currentQuestionIndex equals: indexAfter