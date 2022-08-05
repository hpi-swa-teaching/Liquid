testing
testAnswerSetPollID

	| participantMenu |
	
	participantMenu := LQParticipantMenu new importPollWithId: self poll id.

	
	self assert: participantMenu isNil not.
	self assert: participantMenu answerSet pollId equals: self poll id