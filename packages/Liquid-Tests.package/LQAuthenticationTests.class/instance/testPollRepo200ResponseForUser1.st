tests
testPollRepo200ResponseForUser1
	LQPollRepo default currentPassword: self user1 pwd.
	self assert: ((LQPollRepo default serverAt: self poll id) isSuccess)