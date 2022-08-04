testing
testRemoveUserSet

	| previousSize |
	
	self userSet addToRepo.
	previousSize := self userSetMenu userSets size.
	self userSetMenu choiceSelected: 1.
	self userSetMenu removeSelectedUserSet.
	self assert: self userSetMenu userSets size equals: previousSize - 1.
	self deny: (self userSetMenu userSets contains: [ :currentUserSet | self checkEqualityOf: currentUserSet and: self userSet])