tests
testPollRepo404ResponseForEmptyPollId
	LQPollRepo default currentPassword: self user1 id.
	self assert: 404 equals: ((LQPollRepo default serverAt: '') code)