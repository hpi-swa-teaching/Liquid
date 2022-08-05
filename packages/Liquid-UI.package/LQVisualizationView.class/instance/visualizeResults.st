data
visualizeResults

	^ self poll questionList collect: [:each | self visualizeResultsFor: each]