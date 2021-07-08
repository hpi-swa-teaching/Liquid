tests
testErrorHandling
	|dummy|
	client
		at: 'thrower'
		ifPresent: []
		ifAbsentPut: ThrowerOfErrors new.
	dummy := client at: 'thrower' ifAbsent: [ self fail ].
	[dummy escalate] on: RemoteError do: [^ self "everything is good" ].
	self fail