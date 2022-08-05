testing
testRequiresAuthenticationFalse

	| userSet |
	
	userSet :=  self createUserSet.
	poll userSetID: userSet id.
	
	self assert: poll requiresAuthentication not
	