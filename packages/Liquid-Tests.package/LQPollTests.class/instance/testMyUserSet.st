testing
testMyUserSet

	| userSet |
	
	userSet :=  self createUserSet.
	userSet addToRepo.
	
	self poll userSetID: userSet id.
	
	self assert: userSet id equals: self poll myUserSet id