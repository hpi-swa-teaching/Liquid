tests
testMyUserSetWithUserSetNotInRepo

	| userSet poll |
	
	userSet :=  self createUserSet.
	poll := self createPoll.
	poll userSetID: userSet id.
	self should: [poll myUserSet id] raise: KeyNotFound