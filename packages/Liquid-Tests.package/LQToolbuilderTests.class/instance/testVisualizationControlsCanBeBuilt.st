tests
testVisualizationControlsCanBeBuilt

	"| visualizationControls |
	
	visualizationControls := LQVisualizationControls newWithPoll: (self poll).
	
	ToolBuilder open: visualizationControls.
	
	visualizationControls destroy"