toolbuilder
buildWith: builder 
	| windowSpec |
	windowSpec := self buildWindowWith: builder specs: {self pollListFrame
					-> [self buildPollListWith: builder]. self idTextBoxFrameFrame
					-> [self buildIDTextBoxWith: builder]. self visualizationFrame
					-> [builder pluggablePanelSpec new model: self;
							 layout: #vertical;
							 children: #buildVisualization;
							 yourself]. self deletePollButtonFrame
					-> [self buildDeletePollButtonWith: builder]. self createPollFromSavedPollsButtonFrame
					-> [self buildCreatePollFromSavedDraftsButton: builder]. self idCopyButtonFrame
					-> [self buildIdCopyButtonWith: builder]. self stopServerButtonFrame
					-> [self buildStopServerButtonWith: builder]. self closePollButtonFrame
					-> [self buildClosePollButtonWith: builder]. self createAnotherPollButtonFrame
					-> [self buildCreateAnotherPollButton: builder]. self exportResultsButtonFrame
					-> [self buildExportResultsButtonWith: builder]}.
	windowSpec label: 'Liquid - Host'.
	windowSpec closeAction: #stopRefreshingVisualization.
	^ builder build: windowSpec