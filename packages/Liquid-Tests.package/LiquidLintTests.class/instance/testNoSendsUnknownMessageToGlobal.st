as yet unclassified
testNoSendsUnknownMessageToGlobal

	self assertAllZero: (self lint: #smallLintSendsUnknownMessageToGlobal)