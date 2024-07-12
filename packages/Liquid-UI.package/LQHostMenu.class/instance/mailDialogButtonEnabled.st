toolbuilder
mailDialogButtonEnabled

	^ self pollSelected and: [(LQRemotePollRepoServer pollRepo at: self currentPollID) requiresAuthentication]