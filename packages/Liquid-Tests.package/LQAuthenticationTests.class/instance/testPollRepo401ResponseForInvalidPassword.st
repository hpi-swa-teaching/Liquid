tests
testPollRepo401ResponseForInvalidPassword
	LQPollRepo default currentPassword: -100.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)
