running
setUp

	| temporaryPoll |
	
	super setUp.
	self setUpQuestions.
	temporaryPoll := self createTestPoll.
	self participantMenu: (LQParticipantMenu new
		poll: temporaryPoll;
		answerSet: (LQAnswerSet new pollId: (temporaryPoll id));
		yourself).
	LQPollRepo default at: temporaryPoll id ifPresent: [^ self fail] ifAbsentPut: temporaryPoll.
	ToolBuilder open: self participantMenu