tests
testPollRepo404ResponseForInvalidPollId
	LQPollRepo default currentPassword: self user1 id.
	self assert: 404 equals: ((LQPollRepo default serverAt: -100) code)