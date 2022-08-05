testing
testRequiresAuthenticationFalse

	| userSet |
	
	userSet :=  self createUserSet.
	self poll userSetID: userSet id.
	
	self assert: self poll requiresAuthentication not
	