tests
testMyUserSet

	| userSet poll |
	
	userSet :=  self createUserSet.
	userSet addToRepo.
	poll := self createPoll.
	poll userSetID: userSet id.
	self assert: userSet id equals: poll myUserSet id