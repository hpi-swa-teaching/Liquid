initialize
initialize
	answerSets := OrderedCollection new.
	self id: UUID new.
	isOpen := true.
	guard := LQAcceptingGuard new.