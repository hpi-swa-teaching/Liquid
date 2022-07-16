helper methods
createUserSet1
	
	self user1: self createUser1.
	self user2: self createUser2.
	self userSet: (LQUserSet new
		addUser: self user1;
		addUser: self user2;
		yourself).
	self userSet addToRepo.