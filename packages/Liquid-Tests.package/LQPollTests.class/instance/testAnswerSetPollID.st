testing
testAnswerSetPollID

	| participantMenu |
	
	participantMenu := LQParticipantMenu new importPollWithId: self poll id.

	
	self assert: participantMenu notNil.
	self assert: participantMenu answerSet pollId equals: self poll id