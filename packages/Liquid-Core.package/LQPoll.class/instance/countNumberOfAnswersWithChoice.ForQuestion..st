accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ self answerSets count: [:anAnswerSet |
					(anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]