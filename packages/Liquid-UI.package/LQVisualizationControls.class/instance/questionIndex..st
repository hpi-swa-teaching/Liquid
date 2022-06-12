accessing
questionIndex: aNumber
	
	| visualizationView |
	self questionList at: aNumber ifAbsent: [^ self].
	self currentVisualization ifNotNil: [ self currentVisualization destroy].
	visualizationView := LQVisualizationView newWithPoll: self poll.
	self currentVisualization: (visualizationView visualizeResultsFor: (self poll pollDraft questionList at: aNumber)).
	self index: aNumber.
	self changed: #questionIndex.