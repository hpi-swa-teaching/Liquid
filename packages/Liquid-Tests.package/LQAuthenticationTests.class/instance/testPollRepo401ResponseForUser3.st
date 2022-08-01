tests
testPollRepo401ResponseForUser3
	LQPollRepo default currentToken: self user3 token.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)