testing
testSavePollDraftFromRunningPoll

	| poll copy size |
	poll := LQPoll newWithPollDraft: self pollDraft.
	LQRemotePollRepoServer pollRepo items at: 'running-poll-test' put: poll.
	size := LQRemotePollRepoServer pollDraftRepo items size.
	copy := poll pollDraft saveCopyToRepository.
	self assert: copy notNil.
	self assert: LQRemotePollRepoServer pollDraftRepo items size > size.
	self assert: (LQRemotePollRepoServer pollDraftRepo includesKey: copy pollDraftId).
	(LQRemotePollRepoServer pollRepo includesKey: 'running-poll-test')
		ifTrue: [LQRemotePollRepoServer pollRepo removeKey: 'running-poll-test']