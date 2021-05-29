initialize
initialize

self choiceList: OrderedCollection new;
	votedChoiceList: OrderedCollection new.
	self buildMockUpPoll.
	self pollAnswer: LiquidAnswerSet new.
	self pollAnswer pollId: self poll id.
