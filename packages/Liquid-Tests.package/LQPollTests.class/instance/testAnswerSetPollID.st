tests
testAnswerSetPollID
	| poll participantMenu |
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	poll startWithId: 'IAmAPoll' ifTaken: [self fail: 'Poll ID already taken'].
	participantMenu := LiquidParticipantMenu new importPollWithId: 'IAmAPoll'.
	
	self assert: (participantMenu isNil not).
	self assert: participantMenu answerSet pollId equals: poll id.