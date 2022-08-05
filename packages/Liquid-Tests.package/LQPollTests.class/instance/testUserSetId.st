testing
testUserSetId

	self poll userSetID: 1.
	self assert: self poll userSetID equals: 1