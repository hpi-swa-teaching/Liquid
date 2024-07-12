modifying
exportResults

		LQRemotePollRepoServer pollRepo
			at: self currentPollID
			ifAbsent: [^ 'This poll does not exist.'].
		(LQRemotePollRepoServer pollRepo at: self currentPollID) exportCSV