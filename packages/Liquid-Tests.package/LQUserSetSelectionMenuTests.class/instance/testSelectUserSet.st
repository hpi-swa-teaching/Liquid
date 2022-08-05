testing
testSelectUserSet

	self userSet addToRepo.
	self userSetMenu choiceSelected: 1.
	self userSetMenu selectUserSet.
	self assert: self userSet id equals: self userSetMenu pollDraft userSetID