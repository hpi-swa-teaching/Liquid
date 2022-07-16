testing
testReplacementList

	self mailDialog rawMailText: ''.
	self mailDialog replacementSelectedIndex: 1.
	self assert: self mailDialog rawMailText equals: (self mailDialog replacementList at: 1).