testing
testSaveToRepository

	| size |
	size := LQRemotePollRepoServer pollDraftRepo items size.
	self assert: self pollDraft saveToRepository.
	self assert: LQRemotePollRepoServer pollDraftRepo items size > size.
	self
		assert: (LQRemotePollRepoServer pollDraftRepo items at: self pollDraft pollDraftId) title
		equals: 'TestDraft'