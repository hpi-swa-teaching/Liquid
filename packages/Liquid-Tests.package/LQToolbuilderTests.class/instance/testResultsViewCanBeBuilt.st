testing
testResultsViewCanBeBuilt

	| resultsView |
	
	resultsView := LQResultsView newWithPoll: self poll.
	
	ToolBuilder open: resultsView.
	
	resultsView destroy