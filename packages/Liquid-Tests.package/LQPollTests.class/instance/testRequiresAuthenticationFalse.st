tests
testRequiresAuthenticationFalse

	| userSet poll |
	
	userSet :=  self createUserSet.
	poll := self createPoll.
	poll userSetID: userSet id.
	self assert: poll requiresAuthentication not
	