as yet unclassified
testAddOneUser

	| userSet user1 |
	
	user1 := self createUser1.
	userSet := LQUserSet new
		 addUser: user1.
	
	self assert: userSet userEntries size equals: 1.
	self assert: (userSet userEntries includes: user1)