modifying
deletePoll

	LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ 'This poll does not exist.'].
	LQRemotePollRepoServer pollRepo removeKey: self currentPollID.
	self setIndex: self pollList size