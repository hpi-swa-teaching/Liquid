modifying
saveDraft

	self pollDraft saveToRepository
		ifTrue: [UIManager default inform: 'Draft has been saved']
		ifFalse: [UIManager default inform: 'Invalid poll-draft: Give every question a title and at least one choice!']