class initialization
newWithQuestion: aQuestion andVotes: anOrderedCollection

	^ LQAnswer new
			questionId: aQuestion id;
			choicesRanking: (anOrderedCollection collect: [:each | each description]) ;
			yourself