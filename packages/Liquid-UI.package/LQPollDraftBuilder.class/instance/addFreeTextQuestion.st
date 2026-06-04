modifying
addFreeTextQuestion

	| question builder |
	(self liveEditingGuardWithMessage: 'Can´t add questions to a live poll!') ifTrue: [^ self].
	question := LQFreeTextQuestion new.
	builder := LQFreeTextQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list