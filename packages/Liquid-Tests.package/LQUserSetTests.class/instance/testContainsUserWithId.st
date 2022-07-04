tests
testContainsUserWithId
	| userSet |
	
	userSet := LQUserSet new
		 addUser: self user1.
	self assert: (userSet containsUserWithPwd: self user1 pwd).
	self assert: (userSet containsUserWithPwd: self user2 pwd) not.
	self assert: (userSet containsUserWithPwd: -1) not.
	self assert: (userSet containsUserWithPwd: '') not.