tests
testContainsUserWithId
	| userSet |
	
	userSet := LQUserSet new
		 addUser: self user1.
	self assert: (userSet containsUserWithPwd: self user1 pwd).
	self deny: (userSet containsUserWithPwd: self user2 pwd).
	self deny: (userSet containsUserWithPwd: -1).
	self deny: (userSet containsUserWithPwd: '')