helper methods
createAnswerSet1With: aQuestion

	| temporaryAnswerSet |
	
	temporaryAnswerSet := LQAnswerSet new 
		token: self user1 token;
	 	pollId: (self poll id);
		yourself.
		
	temporaryAnswerSet addAnswer: (LQChoicesAnswer new
		questionId: (aQuestion id);
		votedChoiceList: {(aQuestion choiceList second) description};
		yourself).
		
	^ temporaryAnswerSet