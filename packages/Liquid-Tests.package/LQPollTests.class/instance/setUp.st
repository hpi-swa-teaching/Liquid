initialize-release
setUp
	
	super setUp.
	
	self buildQuestions.
	self buildPoll.
	self buildAnswerSets.
	
	poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken'].