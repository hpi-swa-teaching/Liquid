accessing
answerSets

	^ answerSets ifNil: [answerSets := poll answerSets]