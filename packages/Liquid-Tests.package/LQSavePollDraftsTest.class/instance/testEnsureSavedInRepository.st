testing
testEnsureSavedInRepository

	| size |
	size := LQRemotePollRepoServer pollDraftRepo items size.
	self pollDraft ensureSavedInRepository.
	self assert: LQRemotePollRepoServer pollDraftRepo items size = (size + 1).
	self pollDraft ensureSavedInRepository.
	self assert: LQRemotePollRepoServer pollDraftRepo items size = (size + 1)