modifying
addPriorityQuestion

	| question builder |
	(self liveEditingGuardWithMessage: 'Can´t add questions when poll is already live!') ifTrue: [^false].
	question := LQPriorityQuestion new.
	builder := LQPriorityQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list