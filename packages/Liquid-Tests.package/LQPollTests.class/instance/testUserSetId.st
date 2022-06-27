tests
testUserSetId

	| poll |
	
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll userSetID: 1.
	
	self assert: poll userSetID equals: 1