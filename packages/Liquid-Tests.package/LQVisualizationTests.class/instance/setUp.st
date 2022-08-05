running
setUp

	super setUp.
	
	self poll
		addAnswerSet: self as1;
		addAnswerSet: self as2.
	
	self visualizationControls: (LQVisualizationControls newWithPoll: self poll).
	
	ToolBuilder open: (self visualizationControls).
	ToolBuilder open: (self visualizationControls)
