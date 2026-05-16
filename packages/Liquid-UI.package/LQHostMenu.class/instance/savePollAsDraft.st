modifying
savePollAsDraft

	| poll |
	self pollSelected ifFalse: [^ self].
	poll := LQRemotePollRepoServer pollRepo at: self currentPollID ifAbsent: [^ self].
	poll pollDraft saveCopyToRepository
		ifNotNil: [UIManager default inform: 'Draft has been saved']
		ifNil: [UIManager default inform: 'Invalid poll-draft: Give every question a title and at least one choice!']