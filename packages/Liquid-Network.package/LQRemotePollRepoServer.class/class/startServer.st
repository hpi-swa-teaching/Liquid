accessing
startServer

	self stopServer.
	Server := LQRemotePollRepoServer new listenOn: 8003.