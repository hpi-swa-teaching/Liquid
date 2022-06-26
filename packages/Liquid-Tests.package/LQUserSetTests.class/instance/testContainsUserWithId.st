tests
testContainsUserWithId
	| userSet |
	
	userSet := LQUserSet new
		 addUser: self user1.
	self assert: (userSet containsUserWithID: self user1 id).
	self assert: (userSet containsUserWithID: self user2 id) not.
	self assert: (userSet containsUserWithID: -1) not.
	self assert: (userSet containsUserWithID: '') not.