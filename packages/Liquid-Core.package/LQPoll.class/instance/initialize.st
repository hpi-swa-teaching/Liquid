initialize
initialize

	answerSets := OrderedCollection new.
	self id: UUID new asString.
	isOpen := true.
	guard := LQPasswordGuard new