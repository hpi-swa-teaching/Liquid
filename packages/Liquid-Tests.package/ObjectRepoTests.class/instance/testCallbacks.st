as yet unclassified
testCallbacks
	| server clientA clientB counterA counterB increments total |
	server := RemoteRepoServer new listenOn: (self port).
	
	clientA := RemoteRepoClient new url: (self localhostUrl).
	clientA at: 'counter' ifPresent: nil ifAbsentPut: (ObjectRepoTestCounter new).
	counterA := clientA at: 'counter'.
	
	clientB := RemoteRepoClient new url: (self localhostUrl).
	counterB := clientB at: 'counter'.
	
	increments := 0.
	total := 0.
	counterA subscribe: [ :value | increments := increments + 1. total := value ].
	
	counterB increment.
	Delay forMilliseconds: 100.
	self assert: 1 equals: increments.
	self assert: 1 equals: total.
	
	counterB incrementBy: 3.
	Delay forMilliseconds: 100.
	self assert: 2 equals: increments.
	self assert: 4 equals: total.
	
	server destroy