running
setUp

	super setUp.
	self
		user1: self createUser1;
		user2: self createUser2;
		createUserSet1;
		createPoll;
		mailDialog: (LQMailDialog new poll: self poll; yourself).
	ToolBuilder open: self mailDialog
	