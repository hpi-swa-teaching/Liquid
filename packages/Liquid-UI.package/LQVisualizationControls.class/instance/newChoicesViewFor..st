live-update
newChoicesViewFor: aQuestionIndex

	| visualizationView |
	self questionList at: aQuestionIndex ifAbsent: [^ self].
	visualizationView := LQVisualizationView newWithPoll: self poll.
	self makeNewChoicesVisWith: (visualizationView visualizeChoicesResultsFor: (self poll questionList at: aQuestionIndex))