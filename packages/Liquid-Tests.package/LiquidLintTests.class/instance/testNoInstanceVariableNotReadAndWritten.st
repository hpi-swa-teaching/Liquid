unnecessary code
testNoInstanceVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenVariable)