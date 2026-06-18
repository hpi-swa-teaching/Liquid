testing
testWarningIsShownForClosedPollWithFewParticipants

	poll isOpen: false.
	
	poll answerSets: {1. 2} asOrderedCollection.
	
	self deny: hostMenu lowParticipationWarningText isEmpty.
	
	self assert: (hostMenu lowParticipationWarningText asString includesSubstring: 'Low sample size')