tests
testMessagePassing
	| server clientA clientB flowersA flowersB |
	server := RemoteRepoServer new listenOn: 18081.
	
	clientA := RemoteRepoClient new url: 'http://localhost:18081'.
	clientA at: 'flowers' ifPresent: nil ifAbsentPut: (Set with: 'magnolia').
	flowersA := clientA at: 'flowers' ifAbsent: [].
	
	clientB := RemoteRepoClient new url: 'http://localhost:18081'.
	flowersB := clientB at: 'flowers' ifAbsent: [].
	
	self assert: (flowersB includes: 'magnolia').
	
	self assert: (flowersB includes: 'rhododendron') not.
	flowersA add: 'rhododendron'.
	self assert: (flowersB includes: 'rhododendron').
	
	server destroy
	