modifying
removeQuestion

	self questionBuilders ifNotEmpty: [
		self pollDraft removeQuestionAt: self getIndex.
		self removeQuestionBuilderAt: self getIndex.
		self setIndex: self questionBuilders size.
		self changed: #list]