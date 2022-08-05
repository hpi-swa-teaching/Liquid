helper methods
createAnswerTwoWith: aQuestion and: aPoll

	^ LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {self q2c2};
			yourself);
		pollId: aPoll id;
		yourself
