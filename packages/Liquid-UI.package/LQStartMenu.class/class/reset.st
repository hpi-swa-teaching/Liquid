reseting
reset

	LQUserSetRepo default: nil.
	LQPollRepo default: nil.
	LQRemotePollRepoServer resetPollRepo.
	LQRemotePollRepoServer startServer.
	LQParticipantMenu answeredPollIds: nil.
	LQPasswordManager default: nil