bugs
testNoSendsUnknownMessageToGlobal

	self assertAllZero: (self lint: #smallLintSendsUnknownMessageToGlobal)