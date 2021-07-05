tests
setUpRemoteServer
	|port url canProceed|
	canProceed := false.
	[canProceed] whileFalse: [
		canProceed := true.
		port := 10000 atRandom.
		[server := (RemoteRepoServer new listenOn: port)] ifError: [canProceed := false].
	].
	url := 'http://localhost:' , port.
	client := RemoteRepoClient new url: url.