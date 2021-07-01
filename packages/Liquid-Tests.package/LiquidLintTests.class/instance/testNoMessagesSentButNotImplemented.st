bugs
testNoMessagesSentButNotImplemented

	self assertAllZero: (self lint: #smallLintSentNotImplemented)
