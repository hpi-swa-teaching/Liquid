possible bugs
testNoLiteralArrayContainsComma

	self assertAllZero: (self lint: #smallLintLiteralArrayContainsSuspiciousTrueFalseOrNil)