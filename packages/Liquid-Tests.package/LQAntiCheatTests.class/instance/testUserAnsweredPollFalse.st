testing
testUserAnsweredPollFalse

	self deny: ((LQAntiCheat new) hasUser: self user1 AnsweredPoll: self poll).