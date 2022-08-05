testing
testSendAnswer

	| startMenu answerSet |
	
	startMenu := participantMenu sendAnswer.
	
	answerSet := (LQRemotePollRepoServer pollRepo at: self poll id) answerSets first.
	self assert: (STON toString: answerSet) equals: (STON toString: self as1).
	self assert: (startMenu model isKindOf: LQStartMenu).
	startMenu model destroy.
	self assert: (LQParticipantMenu answeredPollIds includes: self poll id)