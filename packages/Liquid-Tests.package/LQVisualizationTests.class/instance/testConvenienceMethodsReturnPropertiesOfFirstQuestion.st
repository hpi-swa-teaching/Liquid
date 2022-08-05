testing
testConvenienceMethodsReturnPropertiesOfFirstQuestion

	| visualizationView |
	
	visualizationView := LQVisualizationView newWithPoll: self poll.
	self assert: (visualizationView sortData)
		equals: (visualizationView sortDataFor: (self poll pollDraft questionList first)).
	self assert: (visualizationView data)
		equals: (visualizationView dataFor: (self poll pollDraft questionList first)).
	self assert: (visualizationView visualizeResults) size
		equals: self poll pollDraft questionList size