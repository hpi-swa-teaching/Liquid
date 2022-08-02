helper methods
createAnswerOneWith: aQuestion and: aPoll

	^ LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {self q1c2};
			yourself);
		pollId: aPoll id;
		yourself
