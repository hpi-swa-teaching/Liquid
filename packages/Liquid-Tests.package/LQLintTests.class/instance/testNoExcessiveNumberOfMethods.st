misc
testNoExcessiveNumberOfMethods

	self assertAllZero: (self lint: #smallLintExcessiveMethods except: {LQLintTests . LQParticipantMenuTests})