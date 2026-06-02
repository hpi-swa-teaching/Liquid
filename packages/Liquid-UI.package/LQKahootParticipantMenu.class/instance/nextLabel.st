toolbuilder
nextLabel

	^ currentQuestionIndex >= quiz questionList size
		ifTrue: ['Done']
		ifFalse: ['Next']
