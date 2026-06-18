testing
testVisualizationViewUsesConfiguredChartType

	| view diagram |
	view := LQVisualizationView newWithPoll: self poll chartType: SWPieChart.
	diagram := view visualizeChoicesResultsFor: self poll questionList first.
	self assert: (diagram charts anySatisfy: [:chart | chart isKindOf: SWPieChart])