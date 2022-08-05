testing
testMyUserSetWithUserSetNotInRepo

	| userSet |
	
	userSet :=  self createUserSet.
	poll userSetID: userSet id.
	
	self should: [poll myUserSet id] raise: KeyNotFound