modifying
closePoll

	(LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ 'This poll does not exist.']) closeWithPassword: (LQPasswordManager default
		findPasswordFor: self currentPollID
		ifAbsent: [^ UIManager default inform: 'You don''t have access to this poll.']).
	self changed: #closePollButtonEnabled