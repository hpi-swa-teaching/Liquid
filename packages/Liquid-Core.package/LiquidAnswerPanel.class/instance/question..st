accessing
question: aQuestion

	question := aQuestion.
	selectedChoices := Set new.
	self answer: aQuestion buildEmptyAnswer. 
	self changed: #choiceList.