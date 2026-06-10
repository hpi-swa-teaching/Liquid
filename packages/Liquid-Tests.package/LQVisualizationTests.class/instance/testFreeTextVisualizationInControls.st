testing
testFreeTextVisualizationInControls

	| question |
	question := LQFreeTextQuestion new title: 'Comments'.
	self poll pollDraft questionList add: question.
	self visualizationControls setIndex: self poll questionList size.
	self
		assert: (LQVisualizationView
			isLiquidWordCloud: self visualizationControls wrapperMorph submorphs first)
