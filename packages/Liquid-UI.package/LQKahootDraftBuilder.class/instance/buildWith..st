toolbuilder
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {
		self questionListFrame -> [self buildQuestionListWith: builder].
		self questionBuilderFrame -> [
			builder pluggablePanelSpec new
				model: self;
				layout: #vertical;
				children: #buildQuestionBuilder;
				yourself].
		self addQuestionButtonFrame -> [self buildAddQuestionButtonWith: builder].
		self removeQuestionButtonFrame -> [self buildRemoveQuestionButtonWith: builder].
		self publishButtonFrame -> [self buildPublishKahootButtonWith: builder]}.
	windowSpec label: 'Liquid - Create a Kahoot'.
	^ builder build: windowSpec
