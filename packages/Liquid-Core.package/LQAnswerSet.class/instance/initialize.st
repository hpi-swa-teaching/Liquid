initialize-release
initialize

	super initialize.
	self answers: OrderedDictionary new.
	self id: UUID new asString