class initialization
newWithQuestion: aQuestion andVotes: anOrderedCollection

	^ LQChoicesAnswer new
			questionId: aQuestion id;
			votedChoiceList: (anOrderedCollection collect: [:each | each description]) ;
			yourself