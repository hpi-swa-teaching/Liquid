visualization-type
toggleChartType

	self chartType: self nextChartTypeAssociation value.
	self changed: #chartTypeToggleLabel.
	(self questionList at: self index ifAbsent: [^ self]) isFreeTextQuestion
		ifFalse: [self newChoicesViewFor: self index]