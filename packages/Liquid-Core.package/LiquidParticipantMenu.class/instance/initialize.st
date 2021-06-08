initialize
initialize

self choiceList: OrderedCollection new;
	questionList: OrderedCollection new;
	votedChoiceList: OrderedCollection new.
	self pollAnswer: LiquidAnswerSet new.
	self pollAnswer pollId: self poll id.
