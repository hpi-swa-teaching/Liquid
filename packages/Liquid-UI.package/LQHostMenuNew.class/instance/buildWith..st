toolbuilder
buildWith: builder 
	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {self pollListFrame
					-> [self buildPollListWith: builder]. self idTextBoxFrameFrame
					-> ["(self
						questionBuilderFrame)
						-> 
					
						[builder
						pluggablePanelSpec
						new
						model:
						self;
						layout:
						#vertical;
						children:
						#buildQuestionBuilder;
						yourself]. "
						self buildIDTextBoxWith: builder]. self deletePollButtonFrame
					-> [self buildDeletePollButtonWith: builder]. self createPollFromSavedPollsButtonFrame
					-> [self buildCreatePollFromSavedDraftsButton: builder]. self idCopyButtonFrame
					-> [self buildIdCopyButtonWith: builder]. self stopServerButtonFrame
					-> [self buildStopServerButtonWith: builder]. self closePollButtonFrame
					-> [self buildClosePollButtonWith: builder]. self createAnotherPollButtonFrame
					-> [self buildCreateAnotherPollButton: builder]. self exportResultsButtonFrame
					-> [self buildExportResultsButtonWith: builder]}.
	windowSpec label: 'Liquid - Host'.
	^ builder build: windowSpec
	