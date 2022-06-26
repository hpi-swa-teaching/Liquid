testing
testBarChartMorphChangedOnQuestionSelectionChanged
	
	| visualizationOfFirstQuestion visualizationOfSecondQuestion |
	
	self visualizationControls questionIndex: 0 .
	visualizationOfFirstQuestion := self visualizationControls wrapperMorph submorphs first.
	
	self visualizationControls questionIndex: 1 . 
	visualizationOfSecondQuestion := self visualizationControls wrapperMorph submorphs first.
	
	self assert: false equals: (visualizationOfFirstQuestion == visualizationOfSecondQuestion)
	
	