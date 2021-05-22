as yet unclassified
testCallbacks
	| server clientA clientB counterA counterB increments sum |
	server := RemoteRepoServer new listenOn: 18082.
	
	clientA := RemoteRepoClient new url: 'http://localhost:18082'.
	clientA at: 'counter' ifPresent: nil ifAbsentPut: (ObjectRepoTestCounter new).
	counterA := clientA at: 'counter'.
	
	clientB := RemoteRepoClient new url: 'http://localhost:18082'.
	counterB := clientB at: 'counter'.
	
	increments := 0.
	sum := 0.
	counterA subscribe: [ :value | increments := increments + 1. sum := sum + value ].
	
	counterB increment.
	self assert: 1 equals: increments.
	self assert: 1 equals: sum.
	
	counterB incrementBy: 3.
	self assert: 2 equals: increments.
	self assert: 4 equals: sum.
	
	server destroy