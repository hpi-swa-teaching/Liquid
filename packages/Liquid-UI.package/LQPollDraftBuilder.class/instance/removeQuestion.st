modifying
removeQuestion
	self questionBuilders size > 1
		ifTrue: [self pollDraft removeQuestionAt: self getIndex.
			self removeQuestionBuilderAt: self getIndex.
			self setIndex: self questionBuilders size.
			self changed: #list] 