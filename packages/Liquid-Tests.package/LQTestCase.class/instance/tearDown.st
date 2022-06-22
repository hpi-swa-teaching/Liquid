as yet unclassified
tearDown

	super tearDown.
	LQUserSetRepo default: self savedUserSetRepo.
	LQPollRepo default: self savedPollRepo.
	LQRemotePollRepoServer pollRepo: self savedServerPollRepo.