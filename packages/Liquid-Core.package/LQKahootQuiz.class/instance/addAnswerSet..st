server compatibility
addAnswerSet: anAnswerSet

	self participants add: anAnswerSet.
	self changed: #participants
