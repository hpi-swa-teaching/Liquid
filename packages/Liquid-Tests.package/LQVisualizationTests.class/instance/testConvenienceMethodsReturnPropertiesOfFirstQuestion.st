testing
testConvenienceMethodsReturnPropertiesOfFirstQuestion

	| visualizationView |
	
	visualizationView := LQVisualizationView newWithPoll: poll.

	self assert: (visualizationView sortData)
		equals: (visualizationView sortDataFor: (poll pollDraft questionList first)).
	self assert: (visualizationView data)
		equals: (visualizationView dataFor: (poll pollDraft questionList first)).
	self assert: (visualizationView visualizeResults) size
		equals: poll pollDraft questionList size