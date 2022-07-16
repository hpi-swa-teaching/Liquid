testing
testUserAnsweredPollFalse
	| answerSet |
	
	answerSet := LQAnswerSet new 
		userpwd: self user2 pwd;
	 	pollId: (self poll id);
		yourself.
	
	self deny: ((LQAntiCheat new) hasUser: self user1 AnsweredPoll: self poll).