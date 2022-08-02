tests
testPollRepo200ResponseForUser2

	LQPollRepo default token: self user2 token.
	self assert: ((LQPollRepo default serverAt: self poll id) isSuccess)