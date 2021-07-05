tests
setUpRemoteServer
	|port url|
	port := 10000 random.
	server := RemoteRepoServer new listenOn: port.
	url := 'http://localhost:' , port.
	client := RemoteRepoClient new url: url.