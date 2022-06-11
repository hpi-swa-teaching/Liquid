helper methods
createAnswerTwoWith: aQuestion and: aPoll

	^LQAnswerSet new
		addAnswer: (LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: {'Q2A2'};
			yourself);
		pollId: aPoll id;
		yourself
