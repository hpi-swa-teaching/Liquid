accessing - visualization
getVotedChoicesPerChoiceFor: aQuestion

	| sets |
	sets := self answerSets reject: [:anAnswerSet |
		self excludedGroups includes: (self groupOfAnswerSet: anAnswerSet)].
	^ aQuestion choiceList collect: [:aChoice |
		sets count: [:anAnswerSet |
			(anAnswerSet answers at: aQuestion id) containsVoteForChoice: aChoice]]