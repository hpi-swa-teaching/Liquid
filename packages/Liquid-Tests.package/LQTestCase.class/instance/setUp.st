running
setUp

	super setUp.
	self savedUserSetRepo: LQUserSetRepo default.
	self savedPollRepo: LQPollRepo default.
	self savedServerPollRepo: LQRemotePollRepoServer pollRepo.
	self wasServerActive: LQRemotePollRepoServer isServerActive.
	LQUserSetRepo default: nil.
	LQPollRepo default: nil.
	LQRemotePollRepoServer pollRepo: nil.
	LQRemotePollRepoServer startServer.
	"LQPollRepo default: LQLocalObjectRepo new."
	LQParticipantMenu answeredPollIds: Set new