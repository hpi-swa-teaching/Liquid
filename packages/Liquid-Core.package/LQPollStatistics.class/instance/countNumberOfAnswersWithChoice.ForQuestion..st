accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ poll includeAnswerSets count: [:anAnswerSet | (anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]
