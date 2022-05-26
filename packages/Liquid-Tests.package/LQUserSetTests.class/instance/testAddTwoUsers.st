tests
testAddTwoUsers

	| userSet user1 user2 |
	
	user1 := self createUser1.
	user2 := self createUser2.
	userSet := LQUserSet new
		addUser: user1;
		addUser: user2;
		yourself.
	
	self assert: userSet userEntries size equals: 2.
	self assert: (userSet userEntries includes: user1).
	self assert: (userSet userEntries includes: user2)