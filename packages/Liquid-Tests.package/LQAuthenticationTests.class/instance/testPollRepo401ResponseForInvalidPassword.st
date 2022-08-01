tests
testPollRepo401ResponseForInvalidPassword
	LQPollRepo default currentToken: -100.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)
