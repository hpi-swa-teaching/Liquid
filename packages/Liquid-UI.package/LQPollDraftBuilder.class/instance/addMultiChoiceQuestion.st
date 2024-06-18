modifying
addMultiChoiceQuestion

	| question builder |
	
	question := LQMultiChoiceQuestion new.
	builder := LQMultiChoiceQuestionBuilderr new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list