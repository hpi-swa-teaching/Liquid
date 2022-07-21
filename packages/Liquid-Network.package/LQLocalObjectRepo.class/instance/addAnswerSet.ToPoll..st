accessing
addAnswerSet: anAnswerSet ToPoll: aPollId
	^ (items at: aPollId ifAbsent: [^ self]) addAnswerSet: anAnswerSet