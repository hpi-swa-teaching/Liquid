accessing - visualization
includedAnswerSets

	^ self answerSets reject: [:anAnswerSet |
		self excludedGroups includes: (self groupOfAnswerSet: anAnswerSet)]