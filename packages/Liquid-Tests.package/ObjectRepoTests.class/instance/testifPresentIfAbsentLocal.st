tests
testifPresentIfAbsentLocal
	| client presentCheck|
	presentCheck := false.
	client := LocalObjectRepo new.
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
	