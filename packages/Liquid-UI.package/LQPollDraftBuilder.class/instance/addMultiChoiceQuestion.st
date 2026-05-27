modifying
addMultiChoiceQuestion

	| question builder |
	(self liveEditingGuardWithMessage: 'Can´t add questions when poll is already live!') ifTrue: [^false].
	question := LQMultiChoiceQuestion new.
	builder := LQMultiChoiceQuestionBuilder new.
	builder question: question.
	self pollDraft addQuestion: question.
	self addQuestionBuilder: builder.
	self setIndex: self questionBuilders size.
	self changed: #list