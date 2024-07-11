as yet unclassified
newWithQuestion: aQuestion andVotes: anOrderedCollection

	^ LQChoicesAnswer new
			questionId: aQuestion id;
			choicesRanking: (anOrderedCollection collect: [:each | each description]) ;
			yourself