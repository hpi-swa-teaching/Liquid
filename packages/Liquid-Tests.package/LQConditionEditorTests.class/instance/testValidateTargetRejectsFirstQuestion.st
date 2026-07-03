testing
testValidateTargetRejectsFirstQuestion

	self deny: (self run: [self editor validateTargetIn: self pollDraft index: 1] answering: {})