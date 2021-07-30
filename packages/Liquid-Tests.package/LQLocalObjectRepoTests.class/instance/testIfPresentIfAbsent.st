tests
testIfPresentIfAbsent

	| presentCheck |
	presentCheck := false.
	self client
		at: 'newPoll'
		ifPresent: [self fail: 'Poll ID already taken']
		ifAbsentPut: 'This is good'.
	self client at: 'newPoll' ifAbsent: [self fail: 'Poll not found at given ID'].
	self client
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: 'This shouldn''t be happening, but we can''t self fail here'.
	self assert: presentCheck equals: true