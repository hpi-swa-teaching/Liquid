testing
testRequiresAuthenticationTrue

	| userSet poll |
	userSet :=  self createUserSet.
	userSet addToRepo.
	poll:= self createPoll.
	poll userSetID: userSet id.
	self assert: poll requiresAuthentication