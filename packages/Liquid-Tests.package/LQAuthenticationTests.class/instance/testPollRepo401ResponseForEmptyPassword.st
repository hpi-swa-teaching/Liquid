tests
testPollRepo401ResponseForEmptyPassword
	LQPollRepo default currentPassword: ''.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)