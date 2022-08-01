tests
testPollRepo404ResponseForEmptyPollId
	LQPollRepo default token: self user1 token.
	self assert: 404 equals: ((LQPollRepo default serverAt: '') code)