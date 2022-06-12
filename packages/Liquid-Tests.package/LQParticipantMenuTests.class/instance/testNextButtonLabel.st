tests
testNextButtonLabel
	
	self participantMenu currentQuestionIndex: 1.
	1 to: (self participantMenu poll pollDraft questionList size) - 1 do:
			[:i |
				self assert: participantMenu nextButtonLabel equals: 'Next'.
				self participantMenu nextQuestion.].

	self assert: participantMenu nextButtonLabel equals: 'Send Answers'.