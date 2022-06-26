accessing
questionIndex: aNumber
	
	self questionList at: aNumber ifAbsent: [^ self].
	"LQVisualizationControls did not exist due to branching error, removed to fix linter"
	"visualizationView := LQVisualizationView newWithPoll: self poll.
	self currentVisualization: (visualizationView visualizeResultsFor: (self poll pollDraft questionList at: aNumber))."
	self index: aNumber.
	self changed: #questionIndex.