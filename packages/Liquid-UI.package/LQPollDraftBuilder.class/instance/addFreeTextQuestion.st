modifying
addFreeTextQuestion

	| question builder |
	question := LQFreeTextQuestion new.
	builder := LQFreeTextQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list