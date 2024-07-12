testing
testContainsUserWithId

	| userSet |
	userSet := LQUserSet new addUser: self user1.
	self assert: (userSet containsUserWithToken: self user1 token).
	self deny: (userSet containsUserWithToken: self user2 token).
	self deny: (userSet containsUserWithToken: -1).
	self deny: (userSet containsUserWithToken: '')