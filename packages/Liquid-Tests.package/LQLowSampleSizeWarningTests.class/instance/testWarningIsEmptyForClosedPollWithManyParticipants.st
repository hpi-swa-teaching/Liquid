testing
testWarningIsEmptyForClosedPollWithManyParticipants

	poll isOpen: false.
	
	poll answerSets: {1. 2. 3. 4} asOrderedCollection.
	self assert: hostMenu lowParticipationWarningText isEmpty