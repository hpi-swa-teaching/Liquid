accessing
question: aQuestion 
	question := aQuestion.
	self answer: aQuestion buildEmptyAnswer.
	self answer questionId: self question id.
	self resetUI