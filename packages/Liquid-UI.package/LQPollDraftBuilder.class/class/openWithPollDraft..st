instance creation
openWithPollDraft: aLQPollDraft 
	| aPollDraftBuilder |
	aPollDraftBuilder := self new.
	aPollDraftBuilder pollDraft: aLQPollDraft.
	ToolBuilder open: aPollDraftBuilder