as yet unclassified
buildWith: builder
	| windowSpec questionBuilder |
	questionBuilder := LQQuestionBuilder new.
	questionBuilder pollDraft: self pollDraft.
	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame) -> [self buildQuestionListWith: builder].
		(self questionBuilderFrame) -> [questionBuilder buildWith: builder].
		(self runPollButtonFrame) -> [self buildRunPollButtonWith: builder].
		(self addQuestionButtonFrame) -> [self buildAddQuestionButtonWith: builder].
	}.
	windowSpec label: 'Liquid - Create a Poll'.
	builder build:(questionBuilder buildWith: builder).
	 ^builder build: windowSpec
		