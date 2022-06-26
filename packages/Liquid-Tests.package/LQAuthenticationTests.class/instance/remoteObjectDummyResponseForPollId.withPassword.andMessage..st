helper methods
remoteObjectDummyResponseForPollId: aPollId withPassword: aPassword andMessage: aMessage
	| dummy |
	dummy := LQRemoteObjectDummy on: (LQPollRepo default url) withId: aPollId andPassword: aPassword.
	^ dummy postToServer: aMessage.
