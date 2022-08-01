tests
testPollRepo200ResponseForUser1
	LQPollRepo default currentToken: self user1 token.
	self assert: ((LQPollRepo default serverAt: self poll id) isSuccess)