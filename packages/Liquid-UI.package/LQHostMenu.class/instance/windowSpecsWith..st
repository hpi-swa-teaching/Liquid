toolbuilder
windowSpecsWith: builder

    ^ {
        self pollListFrame -> [self buildPollListWith: builder].
        self idTextBoxFrameFrame -> [self buildIDTextBoxWith: builder].
        self visualizationFrame -> [self buildVisualizationPanelWith: builder].
        self openMailDialogButtonFrame -> [self buildOpenMailDialogButtonWith: builder].
        self deletePollButtonFrame -> [self buildDeletePollButtonWith: builder].
        self createPollFromSavedPollsButtonFrame -> [self buildCreatePollFromSavedDraftsButton: builder].
        self idCopyButtonFrame -> [self buildIdCopyButtonWith: builder].
        self stopServerButtonFrame -> [self buildStopServerButtonWith: builder].
        self closePollButtonFrame -> [self buildClosePollButtonWith: builder].
        self createAnotherPollButtonFrame -> [self buildCreateAnotherPollButton: builder].
        self exportResultsButtonFrame -> [self buildExportResultsButtonWith: builder].
        self matchingPreferencesButtonFrame -> [self buildMatchingPreferencesButtonWith: builder]}
