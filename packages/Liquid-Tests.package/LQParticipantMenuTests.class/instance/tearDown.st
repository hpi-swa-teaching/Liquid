running
tearDown

	self originalInformMethod ifNotNil: [MorphicUIManager addSelector: #inform: withMethod: self originalInformMethod].
	
	LQParticipantMenu answeredPollIds remove: self participantMenu poll id ifAbsent: [].
	LQParticipantMenu answeredPollIds remove: self participantMenu messageSubmissionFailed ifAbsent: [].
	LQParticipantMenu answeredPollIds remove: self participantMenu messageSubmissionRejected ifAbsent: [].
	self participantMenu destroy.
	super tearDown