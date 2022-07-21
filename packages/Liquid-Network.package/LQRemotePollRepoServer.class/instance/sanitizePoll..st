security
sanitizePoll: aPoll
	| sanitizedPoll |
	
	sanitizedPoll := STON fromString: (STON toString: aPoll).
	sanitizedPoll
		answerSets: OrderedCollection new;
		guard: LQPasswordGuard new.
	sanitizedPoll pollDraft userSetID: ''.
	^ sanitizedPoll