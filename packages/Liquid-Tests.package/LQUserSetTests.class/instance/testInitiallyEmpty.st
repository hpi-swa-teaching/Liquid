tests
testInitiallyEmpty

	| userSet |
	
	userSet := LQUserSet new.
	self assert: userSet userEntries size equals: 0.