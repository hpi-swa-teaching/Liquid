tests
ifPresentIfAbsent: aClient
	|presentCheck|
	presentCheck := false.
	aClient
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: 'This is good'.
	aClient 
		at: 'newPoll'
		ifAbsent: [self fail].
	aClient 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: 'This shouldn''t be happening'.
	self assert: presentCheck equals: true.
	