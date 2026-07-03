testing
testSendAnswerFailedMessage

	| result |
	LQRemotePollRepoServer stopServer.
	result := self participantMenu sendAnswer.
	
	self assert: result equals: self participantMenu.
	self assert: (LQParticipantMenu answeredPollIds includes: self participantMenu messageSubmissionFailed)