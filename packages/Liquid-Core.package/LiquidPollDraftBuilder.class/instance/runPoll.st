button action
runPoll
|poll taken|
self question maxNumberOfChoices ifNil: [self question maxNumberOfChoices: 1].
taken:= false.
poll := (LiquidPoll newWithPollDraft: self pollDraft).
poll startWithId: (UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID)
		ifTaken: [UIManager default inform: 'This ID is already taken'. taken:= true].
taken ifFalse: [ToolBuilder open: (LiquidRunningPollView newWithPoll: poll)].
		