running
setUp

	super setUp.
	self savedUserSetRepo: LQUserSetRepo default.
	self savedPollRepo: LQPollRepo default.
	self savedServerPollRepo: LQRemotePollRepoServer pollRepo.
	self wasServerActive: LQRemotePollRepoServer isServerActive.
	self savedPasswordManager: LQPasswordManager default.
	self savedAnsweredPollIds: LQParticipantMenu answeredPollIds.
	LQStartMenu reset