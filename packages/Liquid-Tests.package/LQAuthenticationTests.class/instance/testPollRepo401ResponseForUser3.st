tests
testPollRepo401ResponseForUser3
	LQPollRepo default currentPassword: self user3 pwd.
	self assert: 401 equals: ((LQPollRepo default serverAt: self poll id) code)