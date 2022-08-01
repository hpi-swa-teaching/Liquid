tests
testPollRepo404ResponseForInvalidPollId
	LQPollRepo default currentToken: self user1 token.
	self assert: 404 equals: ((LQPollRepo default serverAt: -100) code)