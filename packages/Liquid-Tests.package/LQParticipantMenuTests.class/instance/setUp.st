running
setUp
	
	super setUp.
	
	self participantMenu: (LQParticipantMenu new
		poll: self poll;
		answerSet: self as1;
		yourself).
	
	ToolBuilder open: self participantMenu