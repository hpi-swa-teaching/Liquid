tests
testPollRepo200ResponseForUser2
	LQPollRepo default currentPassword: self user2 pwd.
	self assert: ((LQPollRepo default serverAt: self poll id) isSuccess)