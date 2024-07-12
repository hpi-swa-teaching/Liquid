testing
testRemovePollDrafts

	| size |
	LQRemotePollRepoServer pollDraftRepo items
		at: self pollDraft pollDraftId
		put: self pollDraft.
	size := LQRemotePollRepoServer pollDraftRepo items size.
	LQRemotePollRepoServer pollDraftRepo items
		removeKey: self pollDraft pollDraftId
		ifAbsent: [].
	self assert: LQRemotePollRepoServer pollDraftRepo items size < size