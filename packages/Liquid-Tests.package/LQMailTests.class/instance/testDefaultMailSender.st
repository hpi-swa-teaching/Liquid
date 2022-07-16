testing
testDefaultMailSender

	self assert: self mailDialog mailSender equals: LQMailDialog defaultSender.