live-update
newChoicesViewFor: aQuestionIndex

	| visualizationView |
	self questionList at: aQuestionIndex ifAbsent: [^ self].
	visualizationView := LQVisualizationView newWithPoll: self poll chartType: self chartType.
	self makeNewChoicesVisWith: (visualizationView visualizeChoicesResultsFor: (self poll questionList at: aQuestionIndex))