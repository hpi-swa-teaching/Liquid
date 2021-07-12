tests
testErrorHandling
	|dummy|
	client
		at: 'thrower'
		ifPresent: [self fail: 'Poll already exists']
		ifAbsentPut: LQThrowerOfErrors new.
	dummy := client at: 'thrower' ifAbsent: [self fail: 'Poll not found at given ID'].
	self should: [dummy escalate] raise: Error.