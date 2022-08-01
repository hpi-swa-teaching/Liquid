tests
testPollRepoWithServerUnreachable
	LQRemotePollRepoServer stopServer.
	LQPollRepo default currentToken: self user1 token.
	self should: [LQPollRepo default serverAt: self poll id] raise: ConnectionRefused