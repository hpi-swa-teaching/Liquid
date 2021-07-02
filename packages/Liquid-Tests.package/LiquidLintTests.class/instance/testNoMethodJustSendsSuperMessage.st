unnecessary code
testNoMethodJustSendsSuperMessage

	self assertAllZero: (self lint: #smallLintJustSendsSuper) 