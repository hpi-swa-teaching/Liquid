as yet unclassified
testAddUsers

	| userSet user1 user2 |
	user1 := self createUser1.
	userSet := LQUserSet new
		 addUser: user1.
		
	self assert: userSet userEntries size equals: 1.
	self assert: (userSet userEntries includes: user1) equals: true.
	
	user2 := self createUser2.
	userSet addUser: user2.
	
	self assert: userSet userEntries size equals: 2.
	self assert: (userSet userEntries includes: user1) equals: true.
	self assert: (userSet userEntries includes: user2) equals: true.