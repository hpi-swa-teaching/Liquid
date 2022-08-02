accessing
addAnswerSet: anAnswerSet ToPoll: aPollId

	^ (self items at: aPollId ifAbsent: [^ self]) addAnswerSet: anAnswerSet