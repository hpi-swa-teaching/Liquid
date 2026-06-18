testing
testHasLowSampleSizeWhenEmpty

	| poll |
	poll := LQPoll new.
	self assert: poll hasLowSampleSize