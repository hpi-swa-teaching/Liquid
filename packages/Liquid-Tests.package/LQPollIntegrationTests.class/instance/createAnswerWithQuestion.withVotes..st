helper methods
createAnswerWithQuestion: aQuestion withVotes: anOrderedCollection

	^ LQAnswer new
			questionId: aQuestion id;
			votedChoiceList: anOrderedCollection;
			yourself