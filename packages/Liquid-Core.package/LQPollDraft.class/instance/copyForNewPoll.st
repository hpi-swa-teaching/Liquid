accessing
copyForNewPoll
	| copy |
	copy := STON fromString: (STON toString: self).
	copy pollDraftId: UUID new asString.
	copy questionList do: [:eachQuestion | eachQuestion id: UUID new asString].
	copy title: self copyTitleForNewPoll.
	^ copy