live-update
newFreeTextViewFor: aQuestionIndex 
	| builder textAnswers |
	self wrapperMorph
		submorphsDo: [:m | m delete].
	builder := ToolBuilder default.
	textAnswers := builder
				build: (self buildTextAnswersWith: builder).
	textAnswers position: self wrapperMorph position.
	textAnswers extent: self wrapperMorph owner extent.
	self wrapperMorph addMorph: textAnswers.
	^ textAnswers