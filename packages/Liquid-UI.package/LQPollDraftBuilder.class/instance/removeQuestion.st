modifying
removeQuestion

	self questionBuilders size > 0 ifTrue: [
		self pollDraft removeQuestionAt: self getIndex.
		self removeQuestionBuilderAt: self getIndex.
		self setIndex: self questionBuilders size.
		self changed: #list]