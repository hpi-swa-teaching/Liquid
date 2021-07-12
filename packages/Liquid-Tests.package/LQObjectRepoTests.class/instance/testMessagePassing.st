tests
testMessagePassing
	| clientA clientB flowersA flowersB |
	clientA := RemoteRepoClient new url: url.
	clientA at: 'flowers' ifPresent: nil ifAbsentPut: (Set with: 'magnolia').
	flowersA := clientA at: 'flowers' ifAbsent: [].
	
	clientB := RemoteRepoClient new url: url.
	flowersB := clientB at: 'flowers' ifAbsent: [].
	
	self assert: (flowersB includes: 'magnolia').
	
	self assert: (flowersB includes: 'rhododendron') not.
	flowersA add: 'rhododendron'.
	self assert: (flowersB includes: 'rhododendron').
	