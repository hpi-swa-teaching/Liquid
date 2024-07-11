communication
previousQuestion

	self currentQuestionIndex = 1 ifTrue: [^ self].
	self currentQuestionIndex: self currentQuestionIndex - 1