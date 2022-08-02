helper methods
createUserSet1
	
	self userSet: (LQUserSet new
		addUser: self user1;
		addUser: self user2;
		yourself).
	self userSet addToRepo