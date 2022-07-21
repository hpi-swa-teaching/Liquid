testing
testUserSetData

	self assert: self mailDialog userSetData equals: (self userSet1 userEntries collect: [:user | user mail])