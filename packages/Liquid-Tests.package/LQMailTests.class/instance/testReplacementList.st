as yet unclassified
testReplacementList

	self mailDialog rawMailText: ''.
	self mailDialog replacementSelectedIndex: 2.
	self assert: self mailDialog rawMailText equals: (self mailDialog replacementList at: 2).