testing
testSaveCopyToRepository

	| copy stored |
	copy := self pollDraft saveCopyToRepository.
	self assert: copy notNil.
	stored := LQRemotePollRepoServer pollDraftRepo items at: copy pollDraftId.
	self assert: stored title equals: 'TestDraft'.
	self assert: stored == copy.
	self assert: (self pollDraft == copy) not.
	self assert: (self pollDraft == stored) not