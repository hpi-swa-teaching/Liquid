accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ poll includedAnswerSets count: [:anAnswerSet | (anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]
