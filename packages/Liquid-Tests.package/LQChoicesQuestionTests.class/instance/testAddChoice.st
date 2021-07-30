tests
testAddChoice

	self assert: [self question choiceList isEmpty].
	
	self question addChoice: 'An interesting choice'.
	
	self assert: self question choiceList size equals: 1.
	self assert: self question choiceList first equals: 'An interesting choice'