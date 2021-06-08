as yet unclassified
testWithServer: aBlock
	| server localhostUrl port |
	port := (10000 to: 50000) atRandom.
	localhostUrl := 'http://localhost:',port.
	
	server := RemoteRepoServer new listenOn: port.
	[aBlock value: server value: (RemoteRepoClient new url: localhostUrl) value: (RemoteRepoClient new url: localhostUrl)] ensure: [ server destroy ]
	