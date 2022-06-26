data
visualizeResults

	^ self poll pollDraft questionList do: [:question | self visualizeResultsFor: question]