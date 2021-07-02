tests
testifPresentIfAbsentRemote
	| server port url client presentCheck|
	presentCheck := false.
	port := 10000 random.
	server := RemoteRepoServer new listenOn: port.
	url := 'http://localhost:' , port.
	client := RemoteRepoClient new url: url.
	client
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: (LiquidPoll newWithPollDraft: LiquidPollDraft new).
	client 
		at: 'newPoll'
		ifAbsent: [self fail].
	client 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: ThrowerOfErrors new. 	
		
	self assert: presentCheck equals: true.
	