testing
testAddUserSet

	self userSet addToRepo.
	self assert: self userSetMenu userSets size
		equals: self userSetMenu userSets size + 1.
	self assert: (self userSetMenu userSets contains:
		[ :currentUserSet |
			self checkEqualityOf: currentUserSet and: self userSet])