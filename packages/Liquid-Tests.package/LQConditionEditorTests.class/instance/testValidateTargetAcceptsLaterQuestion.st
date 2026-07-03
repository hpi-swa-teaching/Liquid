testing
testValidateTargetAcceptsLaterQuestion

	self assert: (self run: [self editor validateTargetIn: self pollDraft index: 2] answering: {})