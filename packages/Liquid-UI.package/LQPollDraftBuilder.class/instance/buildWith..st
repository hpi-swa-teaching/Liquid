as yet unclassified
buildWith: builder
	| windowSpec questionBuilder |
	self pollDraft questionList: (OrderedCollection newFrom: {LQChoicesQuestion new}).
	questionBuilder := LQQuestionBuilder new.
	questionBuilder question:  self pollDraft questionList first.
	self addQuestionBuilder: questionBuilder.
	windowSpec := self buildWindowWith: builder specs: {
		(self questionListFrame) -> [self buildQuestionListWith: builder].
		(self questionBuilderFrame) -> 
			[builder pluggablePanelSpec new
				model: self;
				layout: #vertical;
				children: #buildQuestionBuilder;
				yourself].
		(self runPollButtonFrame) -> [self buildRunPollButtonWith: builder].
		(self addQuestionButtonFrame) -> [self buildAddQuestionButtonWith: builder].
	}.
	windowSpec label: 'Liquid - Create a Poll'.
	builder build:(questionBuilder buildWith: builder).
	 ^builder build: windowSpec
		