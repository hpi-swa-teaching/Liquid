running
tearDown

	super tearDown.
	LQUserSetRepo default: self savedUserSetRepo.
	LQPollRepo default: self savedPollRepo.
	LQRemotePollRepoServer pollRepo: self savedServerPollRepo.
	LQRemotePollRepoServer serverActive: self wasServerActive.
	LQPasswordManager default: self savedPasswordManager.
	LQParticipantMenu answeredPollIds: self savedAnsweredPollIds