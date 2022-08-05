misc
testNoNonBlocksInSpecialMessages

	self assertAllZero: (self lint: #smallLintIfTrueBlocks except: {self class})