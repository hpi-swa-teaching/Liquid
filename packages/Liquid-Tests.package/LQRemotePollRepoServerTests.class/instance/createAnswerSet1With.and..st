helper methods
createAnswerSet1With: aQuestion and: anAnswer

	| temporaryAnswerSet |
	
	temporaryAnswerSet := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
		
	temporaryAnswerSet addAnswer: (LQChoicesAnswer new
		questionId: (aQuestion id);
		choicesRanking: {anAnswer description};
		yourself).
		
	^ temporaryAnswerSet