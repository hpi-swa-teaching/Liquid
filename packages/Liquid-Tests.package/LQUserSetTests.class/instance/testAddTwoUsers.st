tests
testAddTwoUsers

	| userSet |
	
	userSet := LQUserSet new
		addUser: self user1;
		addUser: self user2;
		yourself.
	
	self assert: userSet userEntries size equals: 2.
	self assert: (userSet userEntries includes: self user1).
	self assert: (userSet userEntries includes: self user2)