testing
testNoLowSampleSizeAtMinimum

	| poll |
	poll := LQPoll new.
	1 to: poll minSampleSize do: [:index | poll addAnswerSet: LQAnswerSet new].
	self deny: poll hasLowSampleSize