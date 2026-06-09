modifying
saveDraft
	(self liveEditingGuardWithMessage: 'Cannot save the draft while the poll is running.') ifTrue: [^ self].
	(self pollDraft assertTitleAvailable: self pollDraft title excluding: self pollDraft) ifFalse: [
		^ UIManager default inform: 'This title is already in use.'].
	self pollDraft saveToRepository
		ifTrue: [UIManager default inform: 'Draft has been saved']
		ifFalse: [UIManager default inform: 'Invalid poll-draft: Give every question a title and at least one choice!']