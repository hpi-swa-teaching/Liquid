tests
testifPresentIfAbsentRemote
	|presentCheck|
	presentCheck := false.
	self client
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: (LiquidPoll newWithPollDraft: LiquidPollDraft new).
	self client 
		at: 'newPoll'
		ifAbsent: [self fail].
	self client 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: ThrowerOfErrors new. 	
		
	self assert: presentCheck equals: true.
	