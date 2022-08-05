testing
testExcludes

	"group in exclusionMarker is excluded in choice 2 and 3"
	self assert: ((self exclusionMarker excludes: 1) not).
	self assert: (self exclusionMarker excludes: 2).
	self assert: (self exclusionMarker excludes: 3)