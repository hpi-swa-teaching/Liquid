testing
testUserAnsweredPollFalse

	self deny: ((LQPollStatistics poll: self poll) answeredByUser: self user1)