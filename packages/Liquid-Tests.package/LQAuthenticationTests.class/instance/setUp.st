running
setUp

	super setUp.
	self 
		user1: self createUser1;
		user2: self createUser2;
		user3: self createUser3;
		createUserSet1;
		createUserSet2;
		createPoll;
		createPoll2
	