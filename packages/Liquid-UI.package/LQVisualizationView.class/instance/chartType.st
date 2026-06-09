accessing
chartType

	^ chartType ifNil: [chartType := SWBarChart]