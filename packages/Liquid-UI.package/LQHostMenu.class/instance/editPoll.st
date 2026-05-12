modifying
editPoll

	| poll |
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.'].
	ToolBuilder open: (LQPollDraftBuilder newWithPollDraft: poll pollDraft)