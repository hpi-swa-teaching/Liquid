running
setUp
	
	super setUp.
	
	self participantMenu: (LQParticipantMenu new
		poll: poll;
		answerSet: as1;
		yourself).
	
	ToolBuilder open: self participantMenu