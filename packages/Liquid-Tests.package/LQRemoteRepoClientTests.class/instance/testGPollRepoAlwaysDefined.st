tests
testGPollRepoAlwaysDefined
	LQPollRepo default: nil.
	self assert: (LQPollRepo default isNil not).