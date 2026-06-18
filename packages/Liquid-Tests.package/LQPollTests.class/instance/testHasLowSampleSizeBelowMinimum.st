testing
testHasLowSampleSizeBelowMinimum

	| poll |
	poll := LQPoll new.
	poll addAnswerSet: LQAnswerSet new.
	poll addAnswerSet: LQAnswerSet new.
	self assert: poll answerSets size equals: 2.
	self assert: poll hasLowSampleSize