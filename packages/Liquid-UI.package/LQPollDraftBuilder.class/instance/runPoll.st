modifying
runPoll

	| poll givenPollID |
	
	givenPollID := UIManager default request: 'Enter a poll id' initialAnswer: self generateRandomID.
	(givenPollID = '') ifTrue:  [^ self].
	poll := LQPoll newWithPollDraft: self pollDraft.
	poll startWithId: givenPollID
		ifTaken: [^ UIManager default inform: 'This ID is already taken'].
	ToolBuilder open: (LQRunningPollView newWithPoll: poll)