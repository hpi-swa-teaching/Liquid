testing
testUserAnsweredPollTrue
	| answerSet |
	
	answerSet := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
	
	self deny: ((LQAntiCheat new) hasUser: self user1 AnsweredPoll: self poll).
	self poll addAnswerSet: answerSet.
	self assert: ((LQAntiCheat new) hasUser: self user1 AnsweredPoll: self poll)