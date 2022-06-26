tests
testRunningPollViewCanBeBuilt

	"| runningPollView |
	
	runningPollView := LQRunningPollView new.
	
	ToolBuilder open: runningPollView.
	
	runningPollView destroy"