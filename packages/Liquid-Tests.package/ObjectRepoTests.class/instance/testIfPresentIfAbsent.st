tests
testIfPresentIfAbsent
	|localClient presentCheck|
	localClient := LocalObjectRepo new.
	{self client. localClient} do: [:currClient |
	presentCheck := false.
	currClient
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: 'This is good'.
	currClient 
		at: 'newPoll'
		ifAbsent: [self fail].
	currClient 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: 'This shouldn''t be happening'.
	self assert: presentCheck equals: true.
	]
	