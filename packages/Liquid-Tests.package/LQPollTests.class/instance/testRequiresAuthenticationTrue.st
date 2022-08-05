testing
testRequiresAuthenticationTrue

	| userSet |
	
	userSet :=  self createUserSet.
	userSet addToRepo.
	
	poll userSetID: userSet id.
	self assert: poll requiresAuthentication