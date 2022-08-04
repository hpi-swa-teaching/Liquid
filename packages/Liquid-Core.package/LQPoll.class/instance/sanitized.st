accessing
sanitized

	| sanitizedPoll |
	
	sanitizedPoll := STON fromString: (STON toString: self).
	sanitizedPoll
		answerSets: OrderedCollection new;
		guard: LQPasswordGuard new.
	sanitizedPoll pollDraft userSetID: ''.
	^ sanitizedPoll