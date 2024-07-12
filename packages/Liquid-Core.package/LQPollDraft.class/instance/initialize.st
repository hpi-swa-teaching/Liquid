initialize-release
initialize

	super initialize.
	self
		questionList: OrderedCollection new;
		pollDraftId: UUID new asString