as yet unclassified
visualizeResults

	^ self poll pollDraft questionList do: [:question | self visualizeResultsFor: question]