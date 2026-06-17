accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ poll answerSets count: [:anAnswerSet | (anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]