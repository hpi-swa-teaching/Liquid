tests
testNextButton

	| poll participantMenu |
	poll := LQPollTests getTestPoll.
	participantMenu := LQParticipantMenu new
		poll: poll;
		answerSet: (LQAnswerSet new pollId: (poll id));
		yourself.