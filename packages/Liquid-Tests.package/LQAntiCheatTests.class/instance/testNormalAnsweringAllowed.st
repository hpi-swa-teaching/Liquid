testing
testNormalAnsweringAllowed
	
	| answerSet1 answerSet2 q1 |
	
	q1 := (self poll pollDraft questionList first).
	answerSet1 := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.

	answerSet1 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList second) description};
		yourself).
	
	answerSet2 := LQAnswerSet new 
		token: self user2 token;
	 	pollId: (self poll id);
		yourself.
	
	answerSet2 addAnswer: (LQChoicesAnswer new
		questionId: (q1 id);
		votedChoiceList: {(q1 choiceList first) description};
		yourself).
	
	self assert: ((LQAntiCheat new) is: answerSet1 FromUser: self user1 ValidFor: self poll).
	self poll addAnswerSet: answerSet1.
	self assert: ((LQAntiCheat new) is: answerSet2 FromUser: self user2 ValidFor: self poll)
	