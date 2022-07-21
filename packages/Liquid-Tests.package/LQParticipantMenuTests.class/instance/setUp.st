running
setUp

	| poll |
	super setUp.
	self q1c1: (self createChoice1OfFirstQuestion).
	self q1c2: (self createChoice2OfFirstQuestion).
	self q2c1: (self createChoice1OfSecondQuestion).
	self q2c2: (self createChoice2OfSecondQuestion).
	
	self q1: (self createQuestionOne).
	self q2: (self createQuestionTwo).
	
	poll := self createTestPoll.
	
	self participantMenu: (LQParticipantMenu new
		poll: poll;
		answerSet: (LQAnswerSet new pollId: (poll id));
		yourself).
	LQPollRepo default at: poll id ifPresent: [^ self fail] ifAbsentPut: poll.

	ToolBuilder open: self participantMenu.