as yet unclassified
addQuestion

	| question builder |
	question := LQChoicesQuestion new.
	builder := LQQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self changed: #list