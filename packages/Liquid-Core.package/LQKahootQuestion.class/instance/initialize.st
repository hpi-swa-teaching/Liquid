initialize-release
initialize

	super initialize.
	self correctChoiceIndex: 1.
	self choices: OrderedCollection new.
	self id: UUID new asString.
	self timeLimit: 20.
