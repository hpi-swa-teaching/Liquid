tests
testErrorHandling
	|dummy|
	self client
		at: 'thrower'
		ifPresent: []
		ifAbsentPut: ThrowerOfErrors new.
	dummy := self client at: 'thrower' ifAbsent: [].
	[dummy escalate] on: RemoteError do: [^ self "everything is good" ].
	self error: 'The test shouldn''t have gotten here'