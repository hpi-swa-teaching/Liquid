unnecessary code
testNoTemporaryVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenTemporary)