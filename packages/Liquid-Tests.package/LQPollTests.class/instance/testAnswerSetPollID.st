testing
testAnswerSetPollID

	| participantMenu |
	
	participantMenu := LQParticipantMenu new importPollWithId: poll id.

	
	self assert: participantMenu isNil not.
	self assert: participantMenu answerSet pollId equals: poll id