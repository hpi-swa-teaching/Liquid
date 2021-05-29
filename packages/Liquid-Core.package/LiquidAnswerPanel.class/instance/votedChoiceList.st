accessing
votedChoiceList
	(self answer votedChoice) ifNil: [^ OrderedCollection new].
	^ OrderedCollection newFrom: {self answer votedChoice}