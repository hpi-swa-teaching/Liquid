misc
testNoVariableIsOnlyAssignedASingleLiteralValue

	self assertAllZero: (self lint: #smallLintVariableAssignedLiteral)