toolbuilder
buildWith: builder 
	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {self questionListFrame
					-> [self buildQuestionListWith: builder]. self questionBuilderFrame
					-> [builder pluggablePanelSpec new model: self;
							 layout: #vertical;
							 children: #buildQuestionBuilder;
							 yourself]. self runPollButtonFrame
					-> [self buildRunPollButtonWith: builder]. self addMultiChoiceQuestionButtonFrame
					-> [self buildAddQuestionButtonWith: builder]. self addManageUserSetsFrame
					-> [self buildManageUserSetsButton: builder]. self removeQuestionButtonFrame
					-> [self buildRemoveQuestionButtonWith: builder].
					self saveDraftButtonFrame -> [self buildSaveDraftButtonWith: builder]}.
	windowSpec label: 'Liquid - Create a Poll'.
	^ builder build: windowSpec