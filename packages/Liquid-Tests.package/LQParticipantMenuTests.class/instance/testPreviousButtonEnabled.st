tests
testPreviousButtonEnabled
	
	self participantMenu currentQuestionIndex: 1.
	self assert: self participantMenu previousButtonEnabled equals: false.
	
	self participantMenu poll pollDraft questionList do:
			[:i |
				self participantMenu nextQuestion.
				self assert: self participantMenu previousButtonEnabled equals: true.]