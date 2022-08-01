tests
testPollRepo200ResponseForUser2
	LQPollRepo default currentToken: self user2 token.
	self assert: ((LQPollRepo default serverAt: self poll id) isSuccess)