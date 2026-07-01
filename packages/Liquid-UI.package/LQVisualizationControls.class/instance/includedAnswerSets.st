toolbuilder
includedAnswerSets

	^ self groupFilter
		includedAnswerSetsFrom: self poll answerSets
		groupResolver: [:anAnswerSet | self poll groupOfAnswerSet: anAnswerSet]