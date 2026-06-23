accessing
ensureSavedInRepository

	(LQRemotePollRepoServer pollDraftRepo includesKey: self pollDraftId) ifTrue: [^ self].
	self saveCopyToRepository