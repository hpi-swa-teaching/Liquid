data
visualizeResults

	^ self poll pollDraft questionList collect: [:each | self visualizeResultsFor: each]