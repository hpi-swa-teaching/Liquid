testing
testHasVotesForQuestion

	| pollWithStats |
	pollWithStats := LQPollStatistics poll: self poll.
	self deny: (pollWithStats hasVotesForQuestion: self q1).
	self poll addAnswerSet: self as1.
	self assert: (pollWithStats hasVotesForQuestion: self q1)