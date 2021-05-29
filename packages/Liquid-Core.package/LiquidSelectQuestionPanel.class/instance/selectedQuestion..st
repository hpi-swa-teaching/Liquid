accessing
selectedQuestion: aQuestion

	selectedQuestion := aQuestion.
	selectListener value: selectedQuestion.
	self changed: #selectedQuestion.