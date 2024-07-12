initialize-release
initialize

	super initialize.
	self currentPoll: self pollList size.
	LQRemotePollRepoServer pollRepo addDependent: self