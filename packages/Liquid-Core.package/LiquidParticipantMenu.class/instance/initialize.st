initialize
initialize

	self buildMockUpPoll.
	self pollAnswer: LiquidAnswerSet new.
	self pollAnswer pollId: self poll id.
