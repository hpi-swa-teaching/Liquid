misc
testNoNonBlocksInSpecialMessages

	self assertAllZero: (self lint: #smallLintIfTrueBlocks except: {LQLintTests})