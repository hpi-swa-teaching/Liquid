misc
testNoNonBlocksInSpecialMessages

	self assertAllZero: (self lint: #smallLintIfTrueBlocks)