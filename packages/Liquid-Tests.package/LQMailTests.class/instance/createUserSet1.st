as yet unclassified
createUserSet1
	
	self userSet1: (LQUserSet new
		addUser: self user1;
		addUser: self user2;
		yourself).
	self userSet1 addToRepo.