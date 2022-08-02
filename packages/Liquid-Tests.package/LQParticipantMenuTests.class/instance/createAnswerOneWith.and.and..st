helper methods
createAnswerOneWith: aQuestion and: anotherQuestion and: aPoll

	^ LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {self q1c2};
			yourself);
		addAnswer: (LQChoicesAnswer new
			questionId: anotherQuestion id;
			votedChoiceList: {self q2c1};
			yourself);
		pollId: aPoll id;
		yourself
