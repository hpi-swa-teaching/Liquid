misc
testNoExcessiveNumberOfMethods
	self
		assertAllZero: (self lint: #smallLintExcessiveMethods except: {self class. LQParticipantMenuTests. LQAuthenticationTests. LQPollDraftBuilder. LQHostMenu. })