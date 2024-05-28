helper methods
createAnswerWithQuestion: aQuestion withVotes: anOrderedCollection

	^ LQMultChoiceAnswer new
			questionId: aQuestion id;
			choicesRanking: anOrderedCollection;
			yourself