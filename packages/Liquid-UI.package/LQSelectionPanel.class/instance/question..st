accessing
question: aQuestion

	question := aQuestion.
	self selectedChoices: OrderedCollection new.
	self answer: (aQuestion buildEmptyAnswer).
	self resetUI
	