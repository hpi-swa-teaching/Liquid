testing
testVisualizationDataCollection

	poll
		addAnswerSet: as1;
		addAnswerSet: as2.
	
	self assert: (poll getVotedChoicesPerChoiceFor: q1) equals: {2. 1} asArray.
	self assert: (poll getChoiceIdentifiersFor: q1) equals: {1 . 2} asArray.
	self assert: (poll getChoiceNamesFor: q1) equals: {q1a1 description. q1a2 description} asArray