testing
testAnswerSetPollID

	| poll participantMenu |
	poll := LQPoll newWithPollDraft: LQPollDraft new.
	poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken'].
	participantMenu := LQParticipantMenu new importPollWithId: 'IAmAPoll'.
	self assert: participantMenu isNil not.
	self assert: participantMenu answerSet pollId equals: poll id