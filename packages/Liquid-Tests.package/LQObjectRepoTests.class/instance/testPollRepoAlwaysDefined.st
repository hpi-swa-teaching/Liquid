tests
testPollRepoAlwaysDefined
	PollRepo default: nil.
	self assert: (PollRepo default isNil not).