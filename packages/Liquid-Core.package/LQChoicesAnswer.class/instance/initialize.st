initialization
initialize

	super initialize.
	self id: UUID new asString.
	self votedChoiceList: OrderedCollection new