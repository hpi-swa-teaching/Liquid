modifying
deletePoll

	self currentPoll == 0 ifFalse: [
(LQRemotePollRepoServer pollRepo at: self currentPollID
		ifAbsent:
		[^ 'Already deleted.']).
		LQRemotePollRepoServer pollRepo removeKey: self currentPollID
		]
	