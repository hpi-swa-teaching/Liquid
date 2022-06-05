tests
testAddChoice

	self assert: [self question choiceDescriptions isEmpty].
	
	self question addChoice: (LQChoice newFrom: 'An interesting choice').
	
	self assert: (self question choiceDescriptions size) equals: 1.
	self assert: self question choiceDescriptions first equals: 'An interesting choice'