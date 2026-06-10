testing
testTextListVisualizationInControls

	| question |
	LQVisualizationControls showWordCloud: false.
	question := LQFreeTextQuestion new title: 'Comments'.
	self poll pollDraft questionList add: question.
	self visualizationControls setIndex: self poll questionList size.
	self deny: (LQVisualizationView
		isLiquidWordCloud: self visualizationControls wrapperMorph submorphs first)