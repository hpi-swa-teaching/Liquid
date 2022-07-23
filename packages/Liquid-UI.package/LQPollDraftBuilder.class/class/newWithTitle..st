as yet unclassified
newWithTitle: aString

	| newPollDraftBuilder |
	newPollDraftBuilder := self new.
	newPollDraftBuilder pollDraft title: aString.
	^ newPollDraftBuilder