button action
runPoll
self question maxNumberOfChoices ifNil: [self question maxNumberOfChoices: 1].
(LiquidPoll newWithPollDraft: self pollDraft)
 	startWithId: (UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID)
		ifTaken: [UIManager default inform: 'This ID is already taken']