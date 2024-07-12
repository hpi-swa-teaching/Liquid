modifying
showDraft

	| selectedDraft |
	self choiceSelected isZero ifTrue: [^ self].
	selectedDraft := self pollDrafts at: self choiceSelected.
	ToolBuilder open: (LQPollDraftBuilder newWithPollDraft: selectedDraft).
	self destroy