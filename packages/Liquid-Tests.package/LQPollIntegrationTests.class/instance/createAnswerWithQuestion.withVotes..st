helper methods
createAnswerWithQuestion: aQuestion withVotes: anOrderedCollection

	^ LQAnswer new
			questionId: aQuestion id;
			choicesRanking: anOrderedCollection;
			yourself