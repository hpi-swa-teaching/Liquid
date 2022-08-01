instance creation
newWithTitle: aString

	| newPollDraftBuilder |
	newPollDraftBuilder := self new.
	newPollDraftBuilder pollDraft title: aString.
	^ newPollDraftBuilder