modifying
saveDraft
	LQRemotePollRepoServer pollDraftRepo items at: self pollDraft pollDraftId put: self pollDraft.
	UIManager default inform: 'Draft has been saved'.