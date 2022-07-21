testing
testExcludes

	self assert: ((self exclusionMarker excludes: 1) not).
	self assert: (self exclusionMarker excludes: 2).
	self assert: (self exclusionMarker excludes: 3)