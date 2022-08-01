tests
testPollRepo401ResponseForEmptyToken
	LQPollRepo default token: ''.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)