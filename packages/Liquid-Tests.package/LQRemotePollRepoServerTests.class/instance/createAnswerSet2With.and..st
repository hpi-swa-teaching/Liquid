helper methods
createAnswerSet2With: aQuestion and: anAnswer

	| temporaryAnswerSet |
	
	temporaryAnswerSet := LQAnswerSet new 
		token: self user2 token;
	 	pollId: (self poll id);
		yourself.
	
	temporaryAnswerSet addAnswer: (LQChoicesAnswer new
		questionId: (aQuestion id);
		votedChoiceList: {anAnswer description};
		yourself).
		
	^ temporaryAnswerSet