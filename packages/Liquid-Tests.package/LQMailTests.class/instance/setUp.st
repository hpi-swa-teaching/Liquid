running
setUp

	super setUp.
	self user1: self createUser1.
	self user2: self createUser2.
	self createUserSet1.
	self createPoll.
	self mailDialog: (LQMailDialog new poll: self poll; yourself).
	ToolBuilder open: self mailDialog.
	