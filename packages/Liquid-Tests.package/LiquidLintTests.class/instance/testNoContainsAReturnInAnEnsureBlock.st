possible bugs
testNoContainsAReturnInAnEnsureBlock

	self assertAllZero: (self lint: #smallLintReturnInEnsure)