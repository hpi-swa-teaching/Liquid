running
tearDown

	super tearDown.
	LQVisualizationControls showWordCloud: true.
	self visualizationControls destroy