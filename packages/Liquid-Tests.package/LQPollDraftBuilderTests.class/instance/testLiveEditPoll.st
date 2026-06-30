testing
testLiveEditPoll

	self deny: self pollDraftBuilder isInLiveEditMode.
	self pollDraftBuilder addFreeTextQuestion.
	
	self pollDraftBuilder questionBuilders first title: 'Initial Title'.
	self deny: self pollDraftBuilder questionBuilders first question wasEdited.
	
	self pollDraftBuilder isInLiveEditMode: true.
	self pollDraftBuilder questionBuilders first title: 'Edited Title'.
	self assert: self pollDraftBuilder questionBuilders first question wasEdited.