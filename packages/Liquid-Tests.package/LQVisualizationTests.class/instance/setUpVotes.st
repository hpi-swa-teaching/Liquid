initialize-release
setUpVotes

	| answerSet |
	
	answerSet := LQAnswerSet new.
	answerSet pollId: (self poll id).
	
	answerSet addAnswer: (LQChoicesAnswer new
		questionId: (self q1 id);
		votedChoiceList: {self q1a2 description};
		yourself).
		
	answerSet addAnswer: (LQChoicesAnswer new
		questionId: (self q2 id);
		votedChoiceList: {self q2a1 description};
		yourself).
		
	self poll addAnswerSet: answerSet
	
	