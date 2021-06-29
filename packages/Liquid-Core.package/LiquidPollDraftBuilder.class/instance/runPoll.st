button action
runPoll
	(LiquidPoll newWithPollDraft: self pollDraft)
		startWithId: (FillInTheBlank request: 'Enter a poll id')
		ifTaken: [:existingPoll | UIManager default inform: 'This ID is already taken']