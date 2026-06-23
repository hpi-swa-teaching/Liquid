running
tearDown
	self originalInformMethod ifNotNil: [
		MorphicUIManager addSelector: #inform: withMethod: self originalInformMethod].
	
	LQParticipantMenu answeredPollIds
		remove: self participantMenu poll id
		ifAbsent: [].
	self participantMenu destroy.
	super tearDown