helper methods
createAnswerOneWith: aQuestion and: aPoll

	^LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {'Q1A2'};
			yourself);
		pollId: aPoll id;
		yourself.
