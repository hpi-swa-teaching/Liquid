tests
testErrorHandling
	|dummy|
	client
		at: 'thrower'
		ifPresent: [self fail: 'Poll already exists']
		ifAbsentPut: LQThrowerOfErrors new.
	dummy := client at: 'thrower' ifAbsent: [self fail: 'Poll not found at given ID'].
	[dummy escalate] on: RemoteError do: [^ self "everything is good"].
	self fail: 'dummy did not throw a RemoteError'.