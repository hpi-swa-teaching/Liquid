modifying
removeDraft

	| selectedDraft |
	self choiceSelected isZero ifTrue: [^ self].
	selectedDraft := self pollDrafts at: self choiceSelected.
	LQRemotePollRepoServer pollDraftRepo removeKey: selectedDraft pollDraftId.
	self populatePollDrafts