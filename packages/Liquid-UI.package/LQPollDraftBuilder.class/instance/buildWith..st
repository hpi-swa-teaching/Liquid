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
        self runPollButtonFrame -> [self buildRunPollButtonWith: builder].
        self addMultiChoiceQuestionButtonFrame -> [self buildAddMultiChoiceQuestionButtonWith: builder].
        self addFreeTextQuestionButtonFrame -> [self buildAddFreeTextQuestionButtonWith: builder].
        self addPriorityQuestionButtonFrame -> [self buildAddPriorityQuestionButtonWith: builder].
        self addManageUserSetsFrame -> [self buildManageUserSetsButton: builder].
        self showAvailableGroupsFrame -> [self buildShowAvailableGroupsButtonWith: builder].
        self removeQuestionButtonFrame -> [self buildRemoveQuestionButtonWith: builder].
        self saveDraftButtonFrame -> [self buildSaveDraftButtonWith: builder].
        self addConditionButtonFrame -> [self buildAddConditionButtonWith: builder].
        self removeConditionButtonFrame -> [self buildRemoveConditionButtonWith: builder].
        self setDeadlineButtonFrame -> [self buildSetDeadlineButtonWith: builder].
        self showConditionsButtonFrame -> [self buildShowConditionsButtonWith: builder].
        }.
    windowSpec label: 'Liquid - Create a Poll'.
    windowSpec extent: self extent.
    ^ builder build: windowSpec