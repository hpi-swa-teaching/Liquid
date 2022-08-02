testing
testMultipleAnsweringPrevented1
	
	| answerSet |
	
	answerSet := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
	
	self assert: ((LQAntiCheat new) is: answerSet From: self user1 ValidFor: self poll).
	self poll addAnswerSet: answerSet.
	self deny: ((LQAntiCheat new) is: answerSet From: self user1 ValidFor: self poll)
	