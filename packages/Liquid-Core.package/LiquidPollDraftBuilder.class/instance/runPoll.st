button action
runPoll
	(LiquidPoll newWithPollDraft: self pollDraft)
		startWithId: (FillInTheBlank request: 'Enter a poll id')
		ifTaken: [UserDialogBoxMorph inform: 'This ID is already taken']