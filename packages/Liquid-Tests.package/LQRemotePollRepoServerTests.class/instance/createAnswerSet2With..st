helper methods
createAnswerSet2With: aQuestion

	| temporaryAnswerSet |
	
	temporaryAnswerSet := LQAnswerSet new 
		token: self user2 token;
	 	pollId: (self poll id);
		yourself.
	
	temporaryAnswerSet addAnswer: (LQChoicesAnswer new
		questionId: (aQuestion id);
		votedChoiceList: {(aQuestion choiceList first) description};
		yourself).
		
	^ temporaryAnswerSet