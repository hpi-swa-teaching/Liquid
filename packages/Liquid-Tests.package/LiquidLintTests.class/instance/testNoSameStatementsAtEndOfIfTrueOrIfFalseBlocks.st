unnecessary code
testNoSameStatementsAtEndOfIfTrueOrIfFalseBlocks

	self assertAllZero: (self lint: #smallLintEndTrueFalse)