testing
testSendAnswerRejectedMessage

	| result |
	(LQRemotePollRepoServer pollRepo at: self poll id) isOpen: false.
	result := self participantMenu sendAnswer.
	
	self assert: result equals: self participantMenu.
	self assert: (LQParticipantMenu answeredPollIds includes: self participantMenu messageSubmissionRejected)