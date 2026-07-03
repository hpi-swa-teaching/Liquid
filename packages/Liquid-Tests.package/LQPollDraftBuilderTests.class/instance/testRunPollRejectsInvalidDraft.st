testing
testRunPollRejectsInvalidDraft

	self
		run: [LQPollDraftBuilder new runPoll]
		answering: {'Enter a poll id' -> 'never-created-poll'}.
	self deny: (LQRemotePollRepoServer pollRepo includesKey: 'never-created-poll')