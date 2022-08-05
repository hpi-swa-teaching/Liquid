testing
testVisualizationDataCollection

	self poll
		addAnswerSet: self as1;
		addAnswerSet: self as2.
	
	self assert: (self poll getVotedChoicesPerChoiceFor: self q1) equals: {2. 1} asArray.
	self assert: (self poll getChoiceIdentifiersFor: self q1) equals: {1 . 2} asArray.
	self assert: (self poll getChoiceNamesFor: self q1) 
					equals: {self q1a1 description. self q1a2 description} asArray