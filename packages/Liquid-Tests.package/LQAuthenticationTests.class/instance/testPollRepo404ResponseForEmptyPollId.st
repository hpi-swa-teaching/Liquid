tests
testPollRepo404ResponseForEmptyPollId
	LQPollRepo default currentPassword: self user1 pwd.
	self assert: 404 equals: ((LQPollRepo default serverAt: '') code)