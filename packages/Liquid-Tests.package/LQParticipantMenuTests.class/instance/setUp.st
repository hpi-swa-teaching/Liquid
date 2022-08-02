running
setUp

	| temporaryPoll |
	
	super setUp.
	self q1c1: (self createChoice1OfFirstQuestion).
	self q1c2: (self createChoice2OfFirstQuestion).
	self q2c1: (self createChoice1OfSecondQuestion).
	self q2c2: (self createChoice2OfSecondQuestion).
	
	self q1: (self createQuestionOne).
	self q2: (self createQuestionTwo).
	
	temporaryPoll := self createTestPoll.
	
	self participantMenu: (LQParticipantMenu new
		poll: temporaryPoll;
		answerSet: (LQAnswerSet new pollId: (temporaryPoll id));
		yourself).
	LQPollRepo default at: temporaryPoll id ifPresent: [^ self fail] ifAbsentPut: temporaryPoll.

	ToolBuilder open: self participantMenu