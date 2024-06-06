modifying
addPriorityQuestion

	| question builder |
	
	question := LQPriorityQuestion new.
	builder := LQPriorityQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list