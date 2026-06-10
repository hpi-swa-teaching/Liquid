accessing
saveToRepository

	self isValid ifFalse: [^ false].
	LQRemotePollRepoServer pollDraftRepo items at: self pollDraftId put: self.
	^ true