tests
testPreviousButton
	
	self participantMenu currentQuestionIndex: (self participantMenu poll pollDraft questionList size).
	self assert: self participantMenu previousButtonEnabled equals: true.
	self participantMenu poll pollDraft questionList do:
			[:i |
				self participantMenu nextQuestion.
				self assert: self participantMenu previousButtonEnabled equals: true.]