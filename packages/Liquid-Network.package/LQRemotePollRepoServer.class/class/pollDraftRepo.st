accessing
pollDraftRepo
	PollDraftRepo
		ifNil: [self pollDraftRepo: LQLocalObjectRepo new].
	^ PollDraftRepo