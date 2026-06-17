accessing
chartType

	^ chartType ifNil: [chartType := LQVisualizationView defaultChartType]