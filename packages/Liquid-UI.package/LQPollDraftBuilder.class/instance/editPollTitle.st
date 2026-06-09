modifying
editPollTitle
	| newTitle |
	(self liveEditingGuardWithMessage: 'Cannot edit the poll title while the poll is running.') ifTrue: [^ self].
	newTitle := UIManager default
		request: 'Enter poll title'
		initialAnswer: self pollDraft title.
	newTitle isEmpty ifTrue: [^ self].
	(self pollDraft assertTitleAvailable: newTitle excluding: self pollDraft) ifFalse: [
		^ UIManager default inform: 'This title is already in use.'].
	self pollDraft title: newTitle.
	(LQRemotePollRepoServer pollDraftRepo includesKey: self pollDraft pollDraftId) ifTrue: [
		self pollDraft saveToRepository].
	self changed: #pollDraftTitle