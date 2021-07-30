unnecessary code
testNoUnreferencedVariables

	self assertAllZero: (self lint: #smallLintUnreferencedVariables)