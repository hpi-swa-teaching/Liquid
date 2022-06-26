tests
testRunningPollViewCanBeBuilt

	| runningPollView |
	
	runningPollView := LQRunningPollView newWithPoll: self poll.
	
	ToolBuilder open: runningPollView.
	
	runningPollView closePoll .
	
	runningPollView destroy