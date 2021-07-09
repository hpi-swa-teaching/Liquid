tests
testErrorHandling
	|dummy|
	client
		at: 'thrower'
		ifPresent: [self fail]
		ifAbsentPut: LQThrowerOfErrors new.
	dummy := client at: 'thrower' ifAbsent: [ self fail ].
	[dummy escalate] on: RemoteError do: [^ self "everything is good" ].
	self fail