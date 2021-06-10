as yet unclassified
runPoll
	(LiquidPoll newWithPollDraft: self pollDraft)
		startWithId: (FillInTheBlank request: 'Enter a poll id')
		ifTaken: [:existingPoll | UserDialogBoxMorph inform: 'This ID is already taken']