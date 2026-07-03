testing
testValidateTargetRejectsMissingSelection

	self deny: (self run: [self editor validateTargetIn: self pollDraft index: 0] answering: {}).
	self deny: (self run: [self editor validateTargetIn: self pollDraft index: nil] answering: {})