helper methods
createAnswerWithQuestion: aQuestion withVotes: anOrderedCollection

	^ LQChoicesAnswer new
			questionId: aQuestion id;
			choicesRanking: anOrderedCollection;
			yourself