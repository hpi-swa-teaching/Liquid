accessing
selectedQuestion: anObject

	selectedQuestion := anObject.
	selectListener value: selectedQuestion.
	self changed: #selectedQuestion.