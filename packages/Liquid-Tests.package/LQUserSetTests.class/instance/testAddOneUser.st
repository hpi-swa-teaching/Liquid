tests
testAddOneUser

	| userSet |
	
	userSet := LQUserSet new
		 addUser: self user1.
	
	self assert: userSet userEntries size equals: 1.
	self assert: (userSet userEntries includes: self user1)