running
tearDown
	
	LQParticipantMenu answeredPollIds remove: self participantMenu poll id ifAbsent: [].
	self participantMenu destroy.
	super tearDown.