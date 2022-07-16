testing
testMultipleAnsweringPrevented1
	
	| answerSet |
	
	answerSet := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.
	
	self assert: ((LQAntiCheat new) is: answerSet FromUser: self user1 ValidFor: self poll).
	self poll addAnswerSet: answerSet.
	self deny: ((LQAntiCheat new) is: answerSet FromUser: self user1 ValidFor: self poll).
	