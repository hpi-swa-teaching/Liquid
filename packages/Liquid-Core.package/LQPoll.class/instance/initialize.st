initialize-release
initialize

	super initialize.
	self answerSets: OrderedCollection new.
	self id: UUID new asString.
	self isOpen: true.
	self guard: LQPasswordGuard new