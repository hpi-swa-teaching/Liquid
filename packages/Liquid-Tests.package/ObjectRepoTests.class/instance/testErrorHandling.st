tests
testErrorHandling
	| server port url client dummy |
	port := 10000 random.
	server := RemoteRepoServer new listenOn: port.
	url := 'http://localhost:' , port.
	client := RemoteRepoClient new url: url.
	client
		at: 'thrower'
		ifPresent: []
		ifAbsentPut: ThrowerOfErrors new.
	dummy := client at: 'thrower' ifAbsent: [].
	[dummy escalate] on: RemoteError do: [ server destroy. ^ self "everything is good" ].
	self error: 'the test shouldnt have gotten here'