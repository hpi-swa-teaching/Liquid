running
setUp

	super setUp.
	
	poll
		addAnswerSet: as1;
		addAnswerSet: as2.
	
	self visualizationControls: (LQVisualizationControls newWithPoll: (poll)).
	
	ToolBuilder open: (self visualizationControls).
	ToolBuilder open: (self visualizationControls)
