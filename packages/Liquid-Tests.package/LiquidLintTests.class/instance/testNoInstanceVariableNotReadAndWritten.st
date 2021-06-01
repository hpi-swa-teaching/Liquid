as yet unclassified
testNoInstanceVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenVariable)