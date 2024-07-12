testing
testBarChartMorphChangedOnQuestionSelectionChanged

	| visualizationOfFirstQuestion visualizationOfSecondQuestion |
	self visualizationControls questionIndex: 1.
	visualizationOfFirstQuestion := self visualizationControls wrapperMorph submorphs first.
	
	self visualizationControls questionIndex: 2.
	visualizationOfSecondQuestion := self visualizationControls wrapperMorph submorphs first.
	
	self assert: (visualizationOfFirstQuestion = visualizationOfSecondQuestion) not