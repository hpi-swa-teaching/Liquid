class initialization
newWithQuestion: aQuestion andVotes: anOrderedCollection

	^ LQMultChoiceAnswer new
			questionId: aQuestion id;
			choicesRanking: (anOrderedCollection collect: [:each | each description]) ;
			yourself