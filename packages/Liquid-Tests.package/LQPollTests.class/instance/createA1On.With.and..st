helper methods
createA1On: aPoll With: aQuestion and: anotherQuestion

	^ LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {'Q1A2'};
			yourself);
		addAnswer: (LQChoicesAnswer new
			questionId: anotherQuestion id;
			votedChoiceList: {'Q2A1'};
			yourself);
		pollId: aPoll id;
		yourself