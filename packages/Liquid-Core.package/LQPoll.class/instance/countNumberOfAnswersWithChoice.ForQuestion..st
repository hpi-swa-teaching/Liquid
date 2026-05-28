accessing - visualization
countNumberOfAnswersWithChoice: aChoice ForQuestion: aQuestion

	^ self answerSets count: [:anAnswerSet | | answer |
		answer := anAnswerSet answers
			at: aQuestion id
			ifAbsent: [nil].
		answer notNil and: [answer containsVoteForChoice: aChoice]]