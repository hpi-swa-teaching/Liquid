tests
testRemoteObjectDummyWithServerUnreachable
	LQRemotePollRepoServer stopServer.
	self assert: LQRemotePollRepoServer isServerActive not.
	self should: [self remoteObjectDummyResponseForPollId: self poll id withPassword: self user1 pwd andMessage: self id] raise: ConnectionRefused.