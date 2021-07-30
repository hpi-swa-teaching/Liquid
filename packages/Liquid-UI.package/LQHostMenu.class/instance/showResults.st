change behavior
showResults
	| pollNameInput foundPoll |
	pollNameInput := UIManager default request: 'Enter Poll ID'.
	pollNameInput
		ifEmpty: [^ self].
	foundPoll := LQPollRepo default
				at: pollNameInput
				ifAbsent: [^ UIManager default inform: 'This poll does not exist.'].
	ToolBuilder
		open: (LQResultsView newWithPoll: foundPoll)