button action
runPoll
|poll|
self question maxNumberOfChoices ifNil: [self question maxNumberOfChoices: 1].
poll := (LiquidPoll newWithPollDraft: self pollDraft).
poll startWithId: (UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID)
		ifTaken: [^ UIManager default inform: 'This ID is already taken'. taken:= true].
ToolBuilder open: (LiquidRunningPollView newWithPoll: poll).
		