testing
testNextButtonLabel

	self participantMenu currentQuestionIndex: 1.
	1 to: self participantMenu poll pollDraft questionList size - 1 do: [:i |
		self assert: self participantMenu nextButtonLabel equals: 'Next'.
		self participantMenu nextQuestion].
	
	self assert: self participantMenu nextButtonLabel equals: 'Send Answers'