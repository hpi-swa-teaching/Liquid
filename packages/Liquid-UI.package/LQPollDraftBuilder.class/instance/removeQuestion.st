modifying
removeQuestion

	(self liveEditingGuardWithMessage: 'Can´t remove questions when poll is already live!') ifTrue: [^ self].
	self questionBuilders ifNotEmpty: [
		self pollDraft removeQuestionAt: self getIndex.
		self removeQuestionBuilderAt: self getIndex.
		self setIndex: self questionBuilders size.
		self changed: #list]