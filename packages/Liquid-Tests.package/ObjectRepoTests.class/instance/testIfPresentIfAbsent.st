tests
testIfPresentIfAbsent
	|localClient presentCheck|
	localClient := LocalObjectRepo new.
	{self client. localClient} do: [:currClient |
	presentCheck := false.
	currClient
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: (LiquidPoll newWithPollDraft: LiquidPollDraft new).
	currClient 
		at: 'newPoll'
		ifAbsent: [self fail].
	currClient 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: ThrowerOfErrors new.
	self assert: presentCheck equals: true.
	]
	