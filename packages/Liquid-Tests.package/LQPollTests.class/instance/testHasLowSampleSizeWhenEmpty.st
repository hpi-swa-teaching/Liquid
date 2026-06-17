testing
testHasLowSampleSizeWhenEmpty

	| poll |
	poll := LQPoll new.
	self assert: (LQPollStatistics poll: poll) hasLowSampleSize