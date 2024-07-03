modifying
saveDraft
	self pollDraft isValid
		ifTrue: [LQRemotePollRepoServer pollDraftRepo items at: self pollDraft pollDraftId put: self pollDraft.
			UIManager default inform: 'Draft has been saved']
		ifFalse: [^ UIManager default inform: 'Invalid poll-draft: Give every question a title and at least on choice!']