testing
testPollRepo401ResponseForInvalidToken

	LQPollRepo default token: -100.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)