modifying
populatePollDrafts

	| draftCollection |
	draftCollection := LQRemotePollRepoServer pollDraftRepo items collect: [:item | item].
	self pollDrafts: draftCollection