tests
setUpRemoteServer
	|port|
	port := PortAssigner get.
	server := (RemoteRepoServer new listenOn: port).
	url := 'http://localhost:' , port.
	client := RemoteRepoClient new url: url.
	