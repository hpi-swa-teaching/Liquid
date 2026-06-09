accessing
saveToRepository
	self isValid ifFalse: [^ false].
	(self assertTitleAvailable: self title excluding: self) ifFalse: [^ false].
	LQRemotePollRepoServer pollDraftRepo items at: self pollDraftId put: self.
	^ true