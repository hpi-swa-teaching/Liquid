running
setUp

	| poll |
	poll := self createTestPoll.
	self participantMenu: (LQParticipantMenu new
		poll: poll;
		answerSet: (LQAnswerSet new pollId: (poll id));
		yourself).

	ToolBuilder open: self participantMenu.