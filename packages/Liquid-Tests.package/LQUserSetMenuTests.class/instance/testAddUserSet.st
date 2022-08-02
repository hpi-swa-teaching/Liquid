testing
testAddUserSet

	| previousSize |
	
	previousSize := self userSetMenu userSets size.
	self userSet addToRepo.
	self assert: self userSetMenu userSets size equals: previousSize + 1.
	self assert: (self userSetMenu userSets contains: [ :userSet | self checkEqualityOf: userSet and: self userSet])