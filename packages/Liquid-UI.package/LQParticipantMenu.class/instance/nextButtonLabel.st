toolbuilder
nextButtonLabel

	self currentQuestionIndex >= self poll questionList size ifTrue: [^ 'Send Answers'].
	^ 'Next'