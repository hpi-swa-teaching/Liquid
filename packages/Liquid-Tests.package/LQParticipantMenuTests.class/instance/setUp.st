running
setUp

	super setUp.
	
	self participantMenu: (LQParticipantMenu new
		poll: self poll;
		answerSet: self as1;
		yourself).
	
	self originalInformMethod: (MorphicUIManager methodDict at: #inform: ifAbsent: [nil]).
	self originalInformMethod ifNotNil: [
		MorphicUIManager
			compile: 'inform: aString LQParticipantMenu answeredPollIds add: aString. ^ self'
			classified: 'ui requests'
			notifying: nil].
	
	ToolBuilder open: self participantMenu