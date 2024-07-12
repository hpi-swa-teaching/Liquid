testing
testPreviousButtonCurrentQuestionIndex

	| indexBefore indexAfter |
	indexBefore := 2.
	indexAfter := 1.
	self participantMenu currentQuestionIndex: indexBefore.
	self participantMenu previousQuestion.
	self assert: self participantMenu currentQuestionIndex equals: indexAfter.
	self participantMenu previousQuestion.
	self assert: self participantMenu currentQuestionIndex equals: indexAfter