modifying
showDraft
	| selectedDraft |
	self choiceSelected isZero
		ifTrue: [^ self].
	selectedDraft := self pollDrafts at: self choiceSelected.
	LQPollDraftBuilder openWithPollDraft: selectedDraft.
	self destroy.