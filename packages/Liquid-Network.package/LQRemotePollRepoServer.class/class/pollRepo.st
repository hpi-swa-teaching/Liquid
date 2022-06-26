accessing
pollRepo

	PollRepo ifNil: [self pollRepo: LQLocalObjectRepo new].
	^ PollRepo