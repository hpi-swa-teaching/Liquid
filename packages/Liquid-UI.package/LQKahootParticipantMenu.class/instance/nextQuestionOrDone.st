modifying
nextQuestionOrDone

	selectedChoiceIndex = 0 ifTrue: [^ self].
	currentQuestionIndex >= quiz questionList size ifTrue: [^ self done].
	self currentQuestionIndex: currentQuestionIndex + 1
