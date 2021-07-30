button action
runPoll
|poll|
self question maxNumberOfChoices ifNil: [self question maxNumberOfChoices: 1].
poll := (LQPoll newWithPollDraft: self pollDraft).
poll startWithId: (UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID)
		ifTaken: [^ UIManager default inform: 'This ID is already taken' ].
ToolBuilder open: (LQRunningPollView newWithPoll: poll).
		