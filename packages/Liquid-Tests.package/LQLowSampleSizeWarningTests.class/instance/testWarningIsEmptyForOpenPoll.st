testing
testWarningIsEmptyForOpenPoll
	
	poll isOpen: true.
	self assert: hostMenu lowParticipationWarningText isEmpty