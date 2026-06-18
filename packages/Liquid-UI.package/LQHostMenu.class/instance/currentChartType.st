accessing
currentChartType

	self currentVisualizationControls ifNil: [^ LQVisualizationView defaultChartType].
	^ self currentVisualizationControls chartType