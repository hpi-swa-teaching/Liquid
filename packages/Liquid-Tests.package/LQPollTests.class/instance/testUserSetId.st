tests
testUserSetId

	| poll |
	
	poll := LQPoll new.
	poll userSetID: 1.
	
	self assert: poll userSetID equals: 1