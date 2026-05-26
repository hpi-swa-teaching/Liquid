toolbuilder
editPollButtonEnabled

	^ self pollSelected and: [(LQRemotePollRepoServer pollRepo at: self currentPollID) isOpen]