instance creation
newWithTitle: aString and: aHost

	| newPollDraftBuilder |
	newPollDraftBuilder := self new.
	newPollDraftBuilder pollDraft title: aString.
	newPollDraftBuilder host: aHost.
	^ newPollDraftBuilder