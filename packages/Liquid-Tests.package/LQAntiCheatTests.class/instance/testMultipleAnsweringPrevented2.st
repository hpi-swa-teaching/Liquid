testing
testMultipleAnsweringPrevented2
	
	| answerSet1 answerSet2 q1 |
	
	q1 := (self poll pollDraft questionList at: 1).
	answerSet1 := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {2};
		yourself).
	
	answerSet2 := LQAnswerSet new 
		userpwd: self user1 pwd;
	 	pollId: (self poll id);
		yourself.
	
	answerSet2 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {2};
		yourself).
	
	self assert: ((LQAntiCheat new) is: answerSet1 FromUser: self user1 ValidFor: self poll).
	self poll addAnswerSet: answerSet1.
	self deny: ((LQAntiCheat new) is: answerSet2 FromUser: self user1 ValidFor: self poll).
	