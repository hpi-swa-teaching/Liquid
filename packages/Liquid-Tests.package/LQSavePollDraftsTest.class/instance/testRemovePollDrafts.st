testing
testRemovePollDrafts

	| size |
	self pollDraft saveToRepository.
	size := LQRemotePollRepoServer pollDraftRepo items size.
	LQRemotePollRepoServer pollDraftRepo items
		removeKey: self pollDraft pollDraftId
		ifAbsent: [].
	self assert: LQRemotePollRepoServer pollDraftRepo items size < size