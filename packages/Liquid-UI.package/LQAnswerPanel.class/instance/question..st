accessing
question: aQuestion

	question := aQuestion.
	self selectedChoices: Set new.
	self answer: aQuestion buildEmptyAnswer.
	self resetUI
	