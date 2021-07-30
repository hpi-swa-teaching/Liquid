running
setUpRemoteServer

	| port |
	port := LQPortAssigner get.
	server := LQRemoteRepoServer new listenOn: port.
	url := 'http://localhost:', port.
	client := LQRemoteRepoClient new url: url