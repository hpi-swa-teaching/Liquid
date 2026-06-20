testing
testToggleChartTypeCyclesBackToStart

	| start |
	start := self visualizationControls chartType.
	self visualizationControls toggleChartType.
	self deny: self visualizationControls chartType == start.
	(LQVisualizationControls chartTypes size - 1) timesRepeat: [
		self visualizationControls toggleChartType].
	self assert: self visualizationControls chartType == start