tests
testUserSetId

	| poll |
	
	poll := LQPoll new.
	poll id: 1.
	
	self assert: poll id equals: 1