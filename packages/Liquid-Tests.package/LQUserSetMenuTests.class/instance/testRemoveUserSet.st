testing
testRemoveUserSet

	self userSet addToRepo.
	self userSetMenu choiceSelected: 1.
	self userSetMenu removeSelectedUserSet.
	self assert: self userSetMenu userSets size equals: self userSetMenu userSets size - 1.
	self deny: (self userSetMenu userSets contains:
		[ :currentUserSet |
			self checkEqualityOf: currentUserSet and: self userSet])