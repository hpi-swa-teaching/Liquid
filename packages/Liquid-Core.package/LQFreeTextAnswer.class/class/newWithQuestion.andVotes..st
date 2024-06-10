class initialization
newWithQuestion: aQuestion andVotes: anOrderedCollection

	^ LQFreeTextAnswer new
			questionId: aQuestion id;
			yourself