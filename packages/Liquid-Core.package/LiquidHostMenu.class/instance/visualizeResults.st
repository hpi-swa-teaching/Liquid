change behavior
visualizeResults
	| pollNameInput foundPoll |
	pollNameInput := UIManager default request: 'Enter Poll ID'.
	pollNameInput
		ifEmpty: [^ self].
	foundPoll := PollRepo default
				at: pollNameInput
				ifAbsent: [^ UIManager default inform: 'This poll does not exist.'].
	LiquidVisualizationView newWithPoll: foundPoll.