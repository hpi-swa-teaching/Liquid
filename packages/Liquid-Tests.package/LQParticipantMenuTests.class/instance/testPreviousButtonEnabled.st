tests
testPreviousButtonEnabled
	
	self participantMenu currentQuestionIndex: 1.
	self assert: self participantMenu previousButtonEnabled equals: false.
	
	1 to: (self participantMenu poll pollDraft questionList size) do:
			[:i |
				self participantMenu nextQuestion.
				self assert: self participantMenu previousButtonEnabled equals: true.].