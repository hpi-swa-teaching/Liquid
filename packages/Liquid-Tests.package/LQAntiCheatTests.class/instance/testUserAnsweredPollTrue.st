testing
testUserAnsweredPollTrue
	| answerSet |
	
	answerSet := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
	
	self deny: (self poll answeredByUser: self user1).
	self poll addAnswerSet: answerSet.
	self assert: (self poll answeredByUser: self user1)