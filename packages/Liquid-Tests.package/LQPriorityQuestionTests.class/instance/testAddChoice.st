testing
testAddChoice

	self assert: self question choiceDescriptions isEmpty.
	self question addChoice: (LQChoice newFrom: 'TestChoice').
	self assert: self question choiceDescriptions size equals: 1.
	self assert: self question choiceDescriptions first equals: 'TestChoice'