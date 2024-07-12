modifying
exportResults

	self currentPoll isZero ifFalse: [
		LQRemotePollRepoServer pollRepo
			at: self currentPollID
			ifAbsent: [^ 'This poll does not exist.'].
		(LQRemotePollRepoServer pollRepo at: self currentPollID) exportCSV]