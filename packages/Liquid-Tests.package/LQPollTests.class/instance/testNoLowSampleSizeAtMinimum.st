testing
testNoLowSampleSizeAtMinimum

	| poll pollWithStats |
	poll := LQPoll new.
	pollWithStats := LQPollStatistics poll: poll.
	1 to: pollWithStats minSampleSize do: [:index | poll addAnswerSet: LQAnswerSet new].
	self deny: pollWithStats hasLowSampleSize