toolbuilder
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {
		self pollDraftTitleBarFrame -> [self buildPollDraftTitleBarWith: builder].
		self questionListFrame -> [self buildQuestionListWith: builder].
		self questionBuilderFrame -> [
			builder pluggablePanelSpec new
				model: self;
				layout: #vertical;
				children: #buildQuestionBuilder;
				yourself].
		self runPollButtonFrame -> [self isInLiveEditMode ifFalse: [self buildRunPollButtonWith: builder]].
		self addMultiChoiceQuestionButtonFrame -> [self buildAddMultiChoiceQuestionButtonWith: builder].
		self addFreeTextQuestionButtonFrame -> [self buildAddFreeTextQuestionButtonWith: builder].
		self addPriorityQuestionButtonFrame -> [self buildAddPriorityQuestionButtonWith: builder].
		self addManageUserSetsFrame -> [self buildManageUserSetsButton: builder].
		self removeQuestionButtonFrame -> [self buildRemoveQuestionButtonWith: builder].
		self saveDraftButtonFrame -> [self isInLiveEditMode ifFalse: [self buildSaveDraftButtonWith: builder]]}.
	windowSpec label: 'Liquid - Create a Poll'.
	^ builder build: windowSpec