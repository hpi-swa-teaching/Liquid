bugs
testNoMessagesSentButNotImplemented
	self
		assertAllZero: (self lint: #smallLintSentNotImplemented except: {LQAuthenticationTests. LQVisualizationView})
		"Note: The test for LQVisualizationView does not properly work as SwaLint can't locate the StatisticsWorkbench"