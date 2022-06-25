tests
testPollRepoWithServerUnreachable
	LQRemotePollRepoServer stopServer.
	LQPollRepo default currentPassword: self user1 id.
	self should: [LQPollRepo default serverAt: self poll id] raise: ConnectionRefused