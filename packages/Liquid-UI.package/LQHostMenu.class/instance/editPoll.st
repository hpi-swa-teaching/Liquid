modifying
editPoll

	| poll builder |
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.'].
		
	builder := LQPollDraftBuilder newWithPollDraft: poll pollDraft.
	builder isInLiveEditMode: true.
	ToolBuilder open: builder