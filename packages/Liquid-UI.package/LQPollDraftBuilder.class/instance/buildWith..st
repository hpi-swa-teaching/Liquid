as yet unclassified
buildWith: builder
	| windowSpec questionBuilder |
	questionBuilder := LQQuestionBuilder new.
	questionBuilder parent__NOTFINALSOLUTION: self.
	questionBuilder pollDraft: self pollDraft.
	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame) -> [self buildQuestionListWith: builder].
		(self questionBuilderFrame) -> [questionBuilder buildWith: builder].
	}.
	windowSpec label: 'Liquid - Create a Poll'.
	builder build:(questionBuilder buildWith: builder).
	 ^builder build: windowSpec
		