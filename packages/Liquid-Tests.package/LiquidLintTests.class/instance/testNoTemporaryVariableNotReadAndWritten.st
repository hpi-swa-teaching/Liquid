as yet unclassified
testNoTemporaryVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenTemporary) 