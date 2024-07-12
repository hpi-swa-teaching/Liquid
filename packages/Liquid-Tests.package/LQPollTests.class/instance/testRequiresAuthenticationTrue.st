testing
testRequiresAuthenticationTrue

	| userSet |
	userSet := self createUserSet.
	userSet addToRepo.
	
	self poll userSetID: userSet id.
	self assert: self poll requiresAuthentication