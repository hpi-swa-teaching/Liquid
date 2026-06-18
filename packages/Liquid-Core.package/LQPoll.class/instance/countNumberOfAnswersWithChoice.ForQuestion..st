accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ self includedAnswerSets count: [:anAnswerSet |
		(anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]