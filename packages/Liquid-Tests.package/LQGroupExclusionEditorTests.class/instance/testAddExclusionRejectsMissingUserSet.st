testing
testAddExclusionRejectsMissingUserSet

	self pollDraft userSetID: nil.
	self deny: (self
		run: [self editor addExclusionFor: self pollDraft questionBuilder: self questionBuilder]
		answering: {})