pharo
testNoPlatformDependentUserInteraction

"Note: This test doesn't like FillInTheBlank. We whitelist classes were we have checked that the only thing that makes them fail this test is FillInTheBlank"
	self assertAllZero: (self lint: #smallLintPlatformDependentUserInteraction except: {LiquidHostMenu. LiquidStartMenu. LiquidPollDraftBuilder})