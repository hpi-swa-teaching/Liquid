helper methods
createAnswerSet2With: aQuestion and: anAnswer

	| temporaryAnswerSet |
	
	temporaryAnswerSet := LQAnswerSet new 
		token: self user2 token;
	 	pollId: (self poll id);
		yourself.
	
	temporaryAnswerSet addAnswer: (LQMultChoiceAnswer new
		questionId: (aQuestion id);
		choicesRanking: {anAnswer description};
		yourself).
		
	^ temporaryAnswerSet