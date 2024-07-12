toolbuilder
mailDialogButtonEnabled

	self currentPoll isZero
	ifFalse: [^ (LQRemotePollRepoServer pollRepo at: self currentPollID) requiresAuthentication].
	^ false