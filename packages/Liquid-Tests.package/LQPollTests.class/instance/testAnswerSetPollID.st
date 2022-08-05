testing
testAnswerSetPollID

	| participantMenu poll2 |
	
	poll2 := LQPoll newWithPollDraft: (LQPollDraft new).
	poll2 startWithId: 'IAmAPoll2' ifTaken: [self fail]	.


	participantMenu := LQParticipantMenu new importPollWithId: 'IAmAPoll2'.

	
	self assert: participantMenu isNil not.
	self assert: participantMenu answerSet pollId equals: poll2 id