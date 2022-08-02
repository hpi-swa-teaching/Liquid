tests
testPollRepo404ResponseForInvalidPollId

	LQPollRepo default token: self user1 token.
	self assert: 404 equals: ((LQPollRepo default serverAt: -100) code)