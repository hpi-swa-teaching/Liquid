toolbuilder
nextButtonLabel

	(self currentQuestionIndex >= self poll pollDraft questionList size) 
		ifTrue: [^ 'Send Answers'].
	^ 'Next'