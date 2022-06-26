toolbuilder
buildWith: builder
	| windowSpec |
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
	 ^builder build: windowSpec
		
		
