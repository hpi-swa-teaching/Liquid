as yet unclassified
testInitiallyEmpty

	| userSet |
	
	userSet := LQUserSet new.
	self assert: userSet userEntries size equals: 0.