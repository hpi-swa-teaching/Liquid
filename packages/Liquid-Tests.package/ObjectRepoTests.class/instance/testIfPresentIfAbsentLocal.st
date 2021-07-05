tests
testIfPresentIfAbsentLocal
	|presentCheck|
	client := LocalObjectRepo new.
	presentCheck := false.
	self client
		at: 'newPoll'
		ifPresent: [self fail]
		ifAbsentPut: 'This is good'.
	self client 
		at: 'newPoll'
		ifAbsent: [self fail].
	self client 
		at: 'newPoll'
		ifPresent: [presentCheck := true]
		ifAbsentPut: 'This shouldn''t be happening'.
	self assert: presentCheck equals: true.
	