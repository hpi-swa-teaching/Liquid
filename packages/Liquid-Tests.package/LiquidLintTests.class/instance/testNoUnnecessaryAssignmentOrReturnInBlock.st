misc
testNoUnnecessaryAssignmentOrReturnInBlock

	self assertAllZero: (self lint: #smallLintAssignmentInBlock)