helper methods
createA2On: aPoll With: aQuestion

	^ LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {'Q2A2'};
			yourself);
		pollId: aPoll id;
		yourself