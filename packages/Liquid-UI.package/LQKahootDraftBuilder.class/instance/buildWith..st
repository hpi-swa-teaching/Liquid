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
		self publishButtonFrame -> [self buildPublishKahootButtonWith: builder].
		self startKahootButtonFrame -> [self buildStartKahootButtonWith: builder].
		self kahootLobbyCodeFrame -> [self buildKahootLobbyCodeWith: builder].
		self copyKahootLinkButtonFrame -> [self buildCopyKahootLinkButtonWith: builder].
		self participantsTitleFrame -> [self buildParticipantsTitleWith: builder].
		self participantsListFrame -> [self buildParticipantsListWith: builder]}.
	windowSpec label: 'Liquid - Create a Kahoot'.
	^ builder build: windowSpec
