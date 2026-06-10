accessing
saveCopyToRepository

	| copy |
	self isValid ifFalse: [^ nil].
	copy := STON fromString: (STON toString: self).
	LQRemotePollRepoServer pollDraftRepo items at: copy pollDraftId put: copy.
	^ copy