button action
runPoll
	(LiquidPoll newWithPollDraft: self pollDraft)
		startWithId: (UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID)
		ifTaken: [:existingPoll | UIManager default inform: 'This ID is already taken']
