running
setUp

	super setUp.
	
	self buildQuestions.
	self buildPoll.
	self buildAnswerSets.
	
	self poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken']