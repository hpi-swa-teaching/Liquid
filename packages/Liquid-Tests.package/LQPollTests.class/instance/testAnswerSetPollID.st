tests
testAnswerSetPollID
	| poll participantMenu |
	poll := LiquidPoll newWithPollDraft: LiquidPollDraft new.
	poll startWithId: 'IAmAPoll' ifTaken: [self fail].
	participantMenu := LiquidParticipantMenu new importPollWithId: 'IAmAPoll'.
	
	self assert: [participantMenu isNil not].
	self assert: participantMenu answerSet pollId equals: poll id.