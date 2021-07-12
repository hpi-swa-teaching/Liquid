tests - subclasses
ifPresentIfAbsent: aClient
	|presentCheck|
	presentCheck := false.
	aClient
		at: 'newPoll'
		ifPresent: [self fail: 'Poll ID already taken']
		ifAbsentPut: 'This is good'.
	aClient 
		at: 'newPoll'
		ifAbsent: [self fail: 'Poll not found at given ID'].
	aClient 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: 'This shouldn''t be happening, but we can''t self fail here'.
	self assert: presentCheck equals: true.
	