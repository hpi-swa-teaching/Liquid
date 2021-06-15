change behavior
showResults
	| pollNameInput foundPoll |
	pollNameInput := FillInTheBlank request: 'Enter Poll ID'.
	
	pollNameInput
		ifEmpty: [ ^ self ].
		
	foundPoll := PollRepo default at: pollNameInput ifAbsent: [
		UserDialogBoxMorph inform: 'This poll does not exist.'
	].

	ToolBuilder open: (LiquidResultsView newWithPoll: foundPoll).