toolbuilder
closePollButtonEnabled

	^ self pollSelected and: [(LQRemotePollRepoServer pollRepo at: self currentPollID) isOpen]