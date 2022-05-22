accessing
questionIndex: aNumber
	
	self questionList at: aNumber ifAbsent: [^ self].
	self currentVisualization ifNotNil: [ self currentVisualization destroy].
	self currentVisualization: (LQVisualizationView newWithPoll: self poll).
	self currentVisualization visualizeResultsFor: (self poll pollDraft questionList at: aNumber).
	self index: aNumber.
	self changed: #questionIndex.