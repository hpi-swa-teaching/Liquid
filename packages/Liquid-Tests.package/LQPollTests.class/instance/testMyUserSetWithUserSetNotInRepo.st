testing
testMyUserSetWithUserSetNotInRepo

	| userSet |
	
	userSet :=  self createUserSet.
	self poll userSetID: userSet id.
	
	self should: [self poll myUserSet id] raise: KeyNotFound