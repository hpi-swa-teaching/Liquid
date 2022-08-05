testing
testMyUserSet

	| userSet |
	
	userSet :=  self createUserSet.
	userSet addToRepo.
	
	poll userSetID: userSet id.
	
	self assert: userSet id equals: poll myUserSet id