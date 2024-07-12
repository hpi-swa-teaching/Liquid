modifying
populatePollDrafts

	| draftCollection |
	draftCollection := OrderedCollection new.
	LQRemotePollRepoServer pollDraftRepo items do: [:item | draftCollection add: item].
	self pollDrafts: draftCollection