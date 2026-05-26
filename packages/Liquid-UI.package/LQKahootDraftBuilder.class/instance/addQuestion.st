modifying
addQuestion

	| question builder |
	question := LQKahootQuestion new.
	builder := LQKahootQuestionBuilder new.
	builder question: question.
	self kahootQuiz addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list
