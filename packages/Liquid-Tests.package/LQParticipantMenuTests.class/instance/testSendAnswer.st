testing
testSendAnswer

	| startMenu answerSet |
	
	startMenu := participantMenu sendAnswer.
	
	answerSet := (LQRemotePollRepoServer pollRepo at: poll id) answerSets first.
	self assert: (STON toString: answerSet) equals: (STON toString: as1).
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy.
	self assert: (LQParticipantMenu answeredPollIds includes: poll id)