tests
setUp

	| poll |
	poll := LQPollTests getTestPoll.
	self participantMenu: (LQParticipantMenu new
		poll: poll;
		answerSet: (LQAnswerSet new pollId: (poll id));
		yourself).

	ToolBuilder open: self participantMenu.