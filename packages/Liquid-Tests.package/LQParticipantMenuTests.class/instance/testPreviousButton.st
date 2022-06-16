tests
testPreviousButton
	
	self participantMenu currentQuestionIndex: (self participantMenu poll pollDraft questionList size).
	self assert: self participantMenu previousButtonEnabled equals: true.
	1 to: (self participantMenu poll pollDraft questionList size) do:
			[:i |
				self participantMenu nextQuestion.
				self assert: participantMenu previousButtonEnabled equals: true.].