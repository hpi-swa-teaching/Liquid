initialize
initialize

self choiceList: OrderedCollection new;
	questionList: OrderedCollection new;
	votedChoiceList: OrderedCollection new.
	self buildMockUpPoll.
	self pollAnswer: LiquidPollAnswer new.
	self pollAnswer pollId: self poll id.
