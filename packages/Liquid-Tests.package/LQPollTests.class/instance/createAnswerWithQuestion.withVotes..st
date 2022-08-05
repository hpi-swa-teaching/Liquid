tests
createAnswerWithQuestion: aQuestion withVotes: anOrderedCollection

	^ LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: anOrderedCollection;
			yourself