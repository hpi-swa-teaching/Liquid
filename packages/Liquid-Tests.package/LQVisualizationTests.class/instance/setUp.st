running
setUp

	super setUp.
	
	self setUpPoll.
	self setUpVotes.
	
	self visualizationControls: (LQVisualizationControls newWithPoll: (self poll)).
	
	ToolBuilder open: (self visualizationControls).
	ToolBuilder open: (self visualizationControls)
